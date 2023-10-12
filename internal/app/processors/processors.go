package processors

import (
	"bufio"
	"fmt"
	"strings"

	contenttransferencoding "github.com/decke/smtprelay/internal/app/processors/content_transfer_encoding"
	contenttype "github.com/decke/smtprelay/internal/app/processors/content_type"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type ContentTransferProcessor interface {
	Process(lineString string) error
	Flush(contentType processortypes.ContentType, contentTransferEncoding processortypes.ContentTransferEncoding) (section *processortypes.Section, links []string, err error)
	Name() processortypes.ContentTransferEncoding
	SetSectionHeaders(headers string)
}

type bodyProcessor struct {
	headersBuffer                   *strings.Builder
	bodyProcessors                  map[processortypes.ContentTransferEncoding]ContentTransferProcessor
	boundaries                      []string
	currentBoundary                 string
	currentBoundaryAppearanceNumber int
	boundariesEncountered           int
	boundariesProcessed             int
	currentTransferEncoding         processortypes.ContentTransferEncoding
	currentContentType              processortypes.ContentType
}

func NewBodyProcessor(urlReplacer urlreplacer.UrlReplacerActions, htmlURLReplacer urlreplacer.UrlReplacerActions) *bodyProcessor {
	processorMap := map[processortypes.ContentTransferEncoding]ContentTransferProcessor{}
	contentTypeMap := map[processortypes.ContentType]contenttype.ContentTypeActions{}

	textHTML := contenttype.NewTextHTML(htmlURLReplacer)
	textPlain := contenttype.NewTextPlain(urlReplacer)
	defaultContentType := contenttype.NewDefault(urlReplacer)

	contentTypeMap[processortypes.TextHTML] = textHTML
	contentTypeMap[processortypes.TextPlain] = textPlain
	contentTypeMap[processortypes.DefaultContentType] = defaultContentType

	defaultProcessor := contenttransferencoding.NewDefaultBodyProcessor(contentTypeMap)
	base64Processor := contenttransferencoding.NewBase64Processor(contentTypeMap)
	quotedPrintableProcessor := contenttransferencoding.NewQuotedPrintableProcessor(contentTypeMap)
	processorMap[defaultProcessor.Name()] = defaultProcessor
	processorMap[base64Processor.Name()] = base64Processor
	processorMap[quotedPrintableProcessor.Name()] = quotedPrintableProcessor
	return &bodyProcessor{
		bodyProcessors:          processorMap,
		headersBuffer:           &strings.Builder{},
		currentTransferEncoding: processortypes.Default,
		currentContentType:      processortypes.DefaultContentType,
	}
}

func (b *bodyProcessor) GetBodySections(body string) ([]*processortypes.Section, *strings.Builder, map[string]bool, error) {
	bodyReader := strings.NewReader(body)
	scanner := bufio.NewScanner(bodyReader)
	// 8MB max token size, which can be a file encoded in base64
	scanner.Buffer([]byte{}, 10*1024*1024)
	scanner.Split(bufio.ScanLines)
	reachedBody := false
	linksMap := map[string]bool{}
	headers := &strings.Builder{}
	sections := []*processortypes.Section{}
	for scanner.Scan() {
		line := scanner
		lineString := line.Text()
		if lineString == "" && !reachedBody {
			logrus.Debug("reached body")
			reachedBody = true
			continue
		}

		if !reachedBody {
			headers.WriteString(lineString)
			headers.WriteString("\n")
			b.setBoundaryFromLine(lineString)
			continue
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

// we process the body by sections, each section is divided by a boundary
// whenever we reach a boundary, we collect all the headers that follow the boundary until new line
// after reaching newline, we already know from the headers, which processor to use, like base64 or quoted printable
// we set the headers of the section by calling the corresponding body processor
// we process line by line until we hit another boundary
// when another boundary is hit, we flush what we collected from previous boundary
// flushing a boundary returns a section object, which includes:
// content type,
// content transfer encoding
// headers
// data
func (b *bodyProcessor) ProcessBody(line string) (section *processortypes.Section, links []string, err error) {
	links = []string{}
	isHeader := false
	if len(b.boundaries) == 0 {
		return nil, nil, fmt.Errorf("boundary should be set before processing body")
	}

	boundaryStart := fmt.Sprintf("--%s", b.currentBoundary)
	boundaryEnd := fmt.Sprintf("--%s--", b.currentBoundary)
	didHitBoundaryStart := line == boundaryStart
	didHitBoundaryEnd := line == boundaryEnd
	if didHitBoundaryStart || didHitBoundaryEnd {
		if didHitBoundaryStart {
			b.boundariesEncountered += 1
			b.writeHeaderToBuffer(line)
		}
		// first boundary we hit is after headers, so no section there
		if b.boundariesEncountered == 1 {
			return nil, nil, nil
		}
		foundSection, foundLinks, err := b.handleHitBoundary(line, boundaryEnd)
		links = append(links, foundLinks...)
		return foundSection, links, err
	}

	// between boundary and newline everything is considered headers
	if b.boundariesEncountered > b.boundariesProcessed && line != "" {
		isHeader = true
		b.writeHeaderToBuffer(line)
	}

	// its possible to have nested boundaries, so we always look for them
	b.setBoundaryFromLine(line)
	setContentType := b.setContentTypeFromLine(line)
	// we already wrote it before as part of headers, so no need to process
	if setContentType {
		return nil, nil, nil
	}

	setContentTransferEncoding := b.setContentTransferEncodingFromLine(line)
	// we already wrote it before as part of headers, so no need to process
	if setContentTransferEncoding {
		return nil, nil, nil
	}
	// after reaching newline and the current section was not yet processes by counting boundaries
	// set all buffered headers as section headers, flush buffer and don't process
	if b.boundariesEncountered > b.boundariesProcessed && line == "" {
		b.boundariesProcessed = b.boundariesEncountered
		headers := b.flushHeaders(line)
		// by this point, content transfer encoding was already chosen
		b.bodyProcessors[b.currentTransferEncoding].SetSectionHeaders(headers)
		b.processLine(line)
		return nil, nil, nil
	}

	if isHeader {
		return nil, nil, nil
	}
	b.processLine(line)
	return nil, nil, nil
}

func (b *bodyProcessor) writeHeaderToBuffer(line string) {
	b.headersBuffer.WriteString(line)
	b.headersBuffer.WriteString("\n")
}

func (b *bodyProcessor) flushHeaders(line string) string {
	headers := b.headersBuffer.String()
	headers = strings.TrimSuffix(headers, "\n")
	logrus.Debugf("headers for boundary=%s, headers=%s", b.currentBoundary, headers)
	b.headersBuffer.Reset()
	return headers
}

func (b *bodyProcessor) processLine(line string) {
	b.bodyProcessors[b.currentTransferEncoding].Process(line)
}

func (b *bodyProcessor) handleHitBoundary(line string, boundaryEnd string) (section *processortypes.Section, foundLinks []string, err error) {
	shouldAddLastBoundaryLine := false
	if line == boundaryEnd {
		// pop boundary, set current boundary to one before
		b.boundaries = b.boundaries[:len(b.boundaries)-1]
		if len(b.boundaries) > 0 {
			logrus.Infof("popping boundary=%s", b.currentBoundary)
			b.currentBoundary = b.boundaries[len(b.boundaries)-1]
			logrus.Infof("setting boundary to=%s", b.currentBoundary)
		}
		b.boundariesEncountered = 0
		b.boundariesProcessed = 0
		shouldAddLastBoundaryLine = true
	}
	section, foundLinks, err = b.bodyProcessors[b.currentTransferEncoding].Flush(b.currentContentType, b.currentTransferEncoding)
	if err != nil {
		return nil, nil, err
	}
	if shouldAddLastBoundaryLine {
		section.Data += fmt.Sprintf("\n%s\n", line)
	}
	b.currentBoundaryAppearanceNumber += 1
	b.currentContentType = processortypes.DefaultContentType
	b.currentTransferEncoding = processortypes.Default
	logrus.Infof("hit boundary=%s, num=%d", b.currentBoundary, b.currentBoundaryAppearanceNumber)
	return section, foundLinks, nil
}

func (b *bodyProcessor) setContentTransferEncodingFromLine(line string) bool {
	switch {
	case strings.Contains(line, string(processortypes.Base64)):
		// call base64 until end of boundary
		b.currentTransferEncoding = processortypes.Base64
		logrus.Infof("hit transfer_encoding=%s, num=%d", b.currentTransferEncoding, b.currentBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.Quotedprintable)):
		// call quoted printable until end of boundary
		b.currentTransferEncoding = processortypes.Quotedprintable
		logrus.Infof("hit transfer_encoding=%s, num=%d", b.currentTransferEncoding, b.currentBoundaryAppearanceNumber)
		return true
	default:
		logrus.Debugf("unknown transfer encoding, line=%s", line)
		return false
	}
}

func (b *bodyProcessor) setBoundaryFromLine(line string) bool {
	if !strings.Contains(line, `boundary=`) {
		return false
	}
	// add another boundary and set current boundary
	splitBoundary := strings.Split(line, "boundary=")
	newBoundary := strings.ReplaceAll(splitBoundary[1], `"`, "")
	newBoundary = strings.ReplaceAll(newBoundary, ";", "")
	logrus.Infof("found new boundary=%s", newBoundary)
	b.boundaries = append(b.boundaries, newBoundary)
	b.currentBoundary = newBoundary
	return true
}

func (b *bodyProcessor) setContentTypeFromLine(line string) bool {
	// handle current content type
	switch {
	case strings.Contains(line, string(processortypes.MultiPart)):
		b.currentContentType = processortypes.MultiPart
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.currentBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.Image)):
		b.currentContentType = processortypes.Image
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.currentBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.TextPlain)):
		b.currentContentType = processortypes.TextPlain
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.currentBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.TextHTML)):
		b.currentContentType = processortypes.TextHTML
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.currentBoundaryAppearanceNumber)
		return true
	default:
		logrus.Debugf("unknown content type, line=%s", line)
		return false
	}
}
