package processors

import (
	"bufio"
	"fmt"
	"strings"

	contenttransferencoding "github.com/decke/smtprelay/internal/app/processors/content_transfer_encoding"
	"github.com/decke/smtprelay/internal/app/processors/forwarded"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type ContentTransferProcessor interface {
	Process(lineString string, didReachBoundary bool, boundary string, boundaryNum int, contentType processortypes.ContentType) (didProcess bool, links []string)
	Flush(contentType processortypes.ContentType, contentTransferEncoding processortypes.ContentTransferEncoding, boundary string) (section *processortypes.Section, links []string)
	Name() processortypes.ContentTransferEncoding
}

type bodyProcessor struct {
	bodyProcessors                  map[processortypes.ContentTransferEncoding]ContentTransferProcessor
	boundaries                      []string
	currentBoundary                 string
	currentBoundaryAppearanceNumber int
	lastCheckedBoundaryNumber       int
	currentTransferEncoding         processortypes.ContentTransferEncoding
	currentContentType              processortypes.ContentType
}

func NewBodyProcessor(urlReplacer urlreplacer.UrlReplacerActions) *bodyProcessor {
	forwardedProcessor := forwarded.New()
	processorMap := map[processortypes.ContentTransferEncoding]ContentTransferProcessor{}
	defaultProcessor := contenttransferencoding.NewDefaultBodyProcessor(urlReplacer, forwardedProcessor)
	base64Processor := contenttransferencoding.NewBase64Processor(urlReplacer, forwardedProcessor)
	quotedPrintableProcessor := contenttransferencoding.NewQuotedPrintableProcessor(urlReplacer, forwardedProcessor)
	processorMap[defaultProcessor.Name()] = defaultProcessor
	processorMap[base64Processor.Name()] = base64Processor
	processorMap[quotedPrintableProcessor.Name()] = quotedPrintableProcessor
	return &bodyProcessor{
		bodyProcessors: processorMap,
	}
}

func (b *bodyProcessor) SetBoundary(boundary string) {
	b.boundaries = []string{boundary}
	b.currentBoundary = boundary
}

func (b *bodyProcessor) GetBodySections(body string) ([]*processortypes.Section, *strings.Builder, map[string]bool, error) {
	bodyReader := strings.NewReader(body)
	scanner := bufio.NewScanner(bodyReader)
	// 8MB max token size, which can be a file encoded in base64
	scanner.Buffer([]byte{}, 8*1024*1024)
	scanner.Split(bufio.ScanLines)
	reachedBody := false
	linksMap := map[string]bool{}
	boundary := ""
	headers := &strings.Builder{}
	sections := []*processortypes.Section{}
	for scanner.Scan() {
		line := scanner
		lineString := line.Text()
		if lineString == "" && !reachedBody {
			logrus.Debug("reached body")
			reachedBody = true
		}

		if !reachedBody {
			headers.WriteString(lineString)
			headers.WriteString("\n")
			if strings.Contains(lineString, `boundary=`) {
				splitBoundary := strings.Split(lineString, "boundary=")
				boundary = strings.ReplaceAll(splitBoundary[1], `"`, "")
				b.SetBoundary(boundary)
				logrus.Debugf("found boundary=%s", boundary)
			}
			continue
		}

		if boundary == "" {
			logrus.Fatalf("no boundary found in headers=%s", headers.String())
		}

		section, links, err := b.ProcessBody(lineString)
		if err != nil {
			logrus.Error(err)
			continue
		}
		if section != nil {
			sections = append(sections, section)
		}
		for _, link := range links {
			linksMap[link] = true
		}
	}

	if err := scanner.Err(); err != nil {
		logrus.Errorf("error in scanner, err=%s", err)
		return nil, nil, nil, err
	}

	return sections, headers, linksMap, nil
}

func (b *bodyProcessor) ProcessBody(line string) (section *processortypes.Section, links []string, err error) {
	links = []string{}
	if len(b.boundaries) == 0 {
		return nil, nil, fmt.Errorf("boundary should be set before processing body")
	}
	boundaryStart := fmt.Sprintf("--%s", b.currentBoundary)
	boundaryEnd := fmt.Sprintf("--%s--", b.currentBoundary)
	didHitBoundary := strings.HasPrefix(line, boundaryStart)
	// if we hit another boundary call flush of current transfer encoding
	if didHitBoundary {
		foundSection, foundLinks := b.handleHitBoundary(line, boundaryEnd)
		links = append(links, foundLinks...)
		return foundSection, links, nil
	}

	// if we are still in current boundary, no need to check content type and encoding, call process
	if b.currentBoundaryAppearanceNumber == b.lastCheckedBoundaryNumber {
		// skip image until next boundary
		if b.currentContentType == processortypes.Image {
			_, _ = b.bodyProcessors[processortypes.Default].Process(line, didHitBoundary, b.currentBoundary, b.currentBoundaryAppearanceNumber, b.currentContentType)
			return nil, nil, nil
		}
		_, foundLinks := b.bodyProcessors[b.currentTransferEncoding].Process(line, didHitBoundary, b.currentBoundary, b.currentBoundaryAppearanceNumber, b.currentContentType)
		links = append(links, foundLinks...)
		return nil, links, nil
	}

	b.setContentTypeFromLine(line)

	_, foundLinks := b.bodyProcessors[processortypes.Default].Process(line, didHitBoundary, b.currentBoundary, b.currentBoundaryAppearanceNumber, b.currentContentType)
	links = append(links, foundLinks...)
	return nil, links, nil
}

func (b *bodyProcessor) handleHitBoundary(line string, boundaryEnd string) (section *processortypes.Section, foundLinks []string) {
	logrus.WithFields(logrus.Fields{
		"line":        line,
		"boundaryEnd": boundaryEnd,
		"boundaries":  b.boundaries,
	}).Debugf("checking if boundary hit")
	if line == boundaryEnd && len(b.boundaries) > 1 {
		// pop boundary, set current boundary to one before
		b.boundaries = b.boundaries[:len(b.boundaries)-1]
		logrus.Infof("popping boundary=%s", b.currentBoundary)
		b.currentBoundary = b.boundaries[len(b.boundaries)-1]
		logrus.Infof("setting boundary to=%s", b.currentBoundary)
	}
	section, foundLinks = b.bodyProcessors[b.currentTransferEncoding].Flush(b.currentContentType, b.currentTransferEncoding, b.currentBoundary)
	b.currentBoundaryAppearanceNumber += 1
	b.currentContentType = processortypes.DefaultContentType
	b.currentTransferEncoding = processortypes.Default
	logrus.Infof("hit boundary=%s, num=%d", b.currentBoundary, b.currentBoundaryAppearanceNumber)
	return section, foundLinks
}

func (b *bodyProcessor) setContentTypeFromLine(line string) {
	// handle current content type
	switch {
	case strings.Contains(line, `boundary=`):
		// case strings.Contains(line, string(processortypes.MultiPart)):
		// add another boundary and set current boundary
		splitBoundary := strings.Split(line, "boundary=")
		newBoundary := strings.ReplaceAll(splitBoundary[1], `"`, "")
		logrus.Infof("found new boundary=%s", newBoundary)
		b.boundaries = append(b.boundaries, newBoundary)
		b.currentBoundary = newBoundary
	case strings.Contains(line, string(processortypes.Image)):
		b.currentContentType = processortypes.Image
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.currentBoundaryAppearanceNumber)
	case strings.Contains(line, string(processortypes.TextPlain)):
		b.currentContentType = processortypes.TextPlain
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.currentBoundaryAppearanceNumber)
	case strings.Contains(line, string(processortypes.TextHTML)):
		b.currentContentType = processortypes.TextHTML
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.currentBoundaryAppearanceNumber)
	case strings.Contains(line, string(processortypes.Base64)):
		// call base64 until end of boundary
		b.currentTransferEncoding = processortypes.Base64
		b.lastCheckedBoundaryNumber = b.currentBoundaryAppearanceNumber
		logrus.Infof("hit transfer_encoding=%s, num=%d", b.currentTransferEncoding, b.currentBoundaryAppearanceNumber)
	case strings.Contains(line, string(processortypes.Quotedprintable)):
		// call quoted printable until end of boundary
		b.currentTransferEncoding = processortypes.Quotedprintable
		b.lastCheckedBoundaryNumber = b.currentBoundaryAppearanceNumber
		logrus.Infof("hit transfer_encoding=%s, num=%d", b.currentTransferEncoding, b.currentBoundaryAppearanceNumber)
	default:
		logrus.Debugf("unknown content type / transfer encoding, line=%s", line)
	}
}
