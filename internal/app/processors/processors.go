package processors

import (
	"bufio"
	"fmt"
	"regexp"
	"strings"

	"github.com/decke/smtprelay/internal/app/processors/charset"
	contenttransferencoding "github.com/decke/smtprelay/internal/app/processors/content_transfer_encoding"
	contenttype "github.com/decke/smtprelay/internal/app/processors/content_type"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type ContentTransferProcessor interface {
	Process(lineString string) error
	Flush() (section *processortypes.Section, links []string, err error)
	Name() processortypes.ContentTransferEncoding
	SetSectionHeaders(headers string)
	SetSectionContentType(contentType processortypes.ContentType)
	SetSectionContentTransferEncoding(contentTransferEncoding processortypes.ContentTransferEncoding)
	SetSectionCharset(charset string)
	SetIsAttachment(isAttachment bool, fileName string)
}

type bodyProcessor struct {
	headersBuffer                 *strings.Builder
	bodyProcessors                map[processortypes.ContentTransferEncoding]ContentTransferProcessor
	boundaries                    []string
	currentBoundary               string
	totalBoundaryAppearanceNumber int
	boundariesEncountered         int
	boundariesProcessed           int
	currentTransferEncoding       processortypes.ContentTransferEncoding
	currentContentType            processortypes.ContentType
	currentCharset                string
}

func NewBodyProcessor(urlReplacer urlreplacer.UrlReplacerActions, htmlURLReplacer urlreplacer.UrlReplacerActions) *bodyProcessor {
	processorMap := map[processortypes.ContentTransferEncoding]ContentTransferProcessor{}
	contentTypeMap := map[processortypes.ContentType]contenttype.ContentTypeActions{}

	textHTML := contenttype.NewTextHTML(htmlURLReplacer)
	textPlain := contenttype.NewTextPlain(urlReplacer)
	defaultContentType := contenttype.NewDefault(urlReplacer)

	charsetActions := charset.NewCharset()

	contentTypeMap[processortypes.TextHTML] = textHTML
	contentTypeMap[processortypes.TextPlain] = textPlain
	contentTypeMap[processortypes.DefaultContentType] = defaultContentType

	defaultProcessor := contenttransferencoding.NewDefaultBodyProcessor(contentTypeMap, charsetActions)
	base64Processor := contenttransferencoding.NewBase64Processor(contentTypeMap, charsetActions)
	quotedPrintableProcessor := contenttransferencoding.NewQuotedPrintableProcessor(contentTypeMap, charsetActions)

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
	for {
		canProcess := scanner.Scan()
		atEOF := !canProcess
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
			b.setContentTransferEncodingFromLine(lineString)
			b.setContentTypeFromLine(lineString)
			b.setCharsetFromLine(lineString)
			continue
		}

		section, links, err := b.ProcessBody(lineString, atEOF)
		if err != nil {
			return nil, nil, nil, err
		}
		if section != nil && section.Data != "" {
			sections = append(sections, section)
		}
		for _, link := range links {
			linksMap[link] = true
		}
		if atEOF {
			break
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
func (b *bodyProcessor) ProcessBody(line string, lastLine bool) (section *processortypes.Section, links []string, err error) {
	links = []string{}
	boundaryStart := fmt.Sprintf("--%s", b.currentBoundary)
	boundaryEnd := fmt.Sprintf("--%s--", b.currentBoundary)
	didHitBoundaryStart := line == boundaryStart
	didHitBoundaryEnd := line == boundaryEnd
	if didHitBoundaryStart || didHitBoundaryEnd || lastLine {
		if didHitBoundaryStart {
			b.boundariesEncountered += 1
			err := b.writeHeaderToBuffer(line)
			if err != nil {
				return nil, nil, err
			}
		}
		// first boundary we hit is after headers, so no section there
		if b.boundariesEncountered == 1 {
			return nil, nil, nil
		}
		foundSection, foundLinks, err := b.handleHitBoundary(line, boundaryEnd)
		links = append(links, foundLinks...)
		return foundSection, links, err
	}

	// its possible to have nested boundaries, so we always look for them
	b.setBoundaryFromLine(line)
	b.setCharsetFromLine(line)
	b.setContentTypeFromLine(line)
	b.setContentTransferEncodingFromLine(line)

	if strings.Contains(line, "&nbsp;") {
		line = strings.ReplaceAll(line, "&nbsp;", " ")
	}

	stillInHeaders := b.boundariesEncountered > b.boundariesProcessed && line != ""
	finishedHeaders := b.boundariesEncountered > b.boundariesProcessed && line == ""

	switch {
	// when we are still reading headers, add to headers buffer
	case stillInHeaders:
		err := b.writeHeaderToBuffer(line)
		return nil, nil, err
		// when we reached end of headers in boundary, flush them to appropriate content transfer encoding processor
	case finishedHeaders:
		b.boundariesProcessed = b.boundariesEncountered
		headers := b.flushHeaders(line)
		// by this point, all headers were parsed and we can set all section metadata from transfer encoding
		b.setSectionMetadata(headers)
		isAttachment, fileName := b.checkIfAttachment(headers)
		if isAttachment {
			b.bodyProcessors[b.currentTransferEncoding].SetIsAttachment(true, fileName)
		}
		err = b.processLine(line)
		return nil, nil, err
	default:
		// process line in body of a specific boundary. We get here after we process the above headers
		err = b.processLine(line)
		return nil, nil, err
	}
}

func (b *bodyProcessor) setSectionMetadata(headers string) {
	b.bodyProcessors[b.currentTransferEncoding].SetSectionContentTransferEncoding(b.currentTransferEncoding)
	b.bodyProcessors[b.currentTransferEncoding].SetSectionContentType(b.currentContentType)
	b.bodyProcessors[b.currentTransferEncoding].SetSectionCharset(b.currentCharset)
	b.bodyProcessors[b.currentTransferEncoding].SetSectionHeaders(headers)
}

func (b *bodyProcessor) writeHeaderToBuffer(line string) error {
	_, err := b.headersBuffer.WriteString(line)
	if err != nil {
		return err
	}
	_, err = b.headersBuffer.WriteString("\n")
	return err
}

func (b *bodyProcessor) flushHeaders(line string) string {
	headers := b.headersBuffer.String()
	headers = strings.TrimSuffix(headers, "\n")
	logrus.Debugf("headers for boundary=%s, headers=%s", b.currentBoundary, headers)
	b.headersBuffer.Reset()
	return headers
}

func (b *bodyProcessor) processLine(line string) error {
	return b.bodyProcessors[b.currentTransferEncoding].Process(line)
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
		shouldAddLastBoundaryLine = true
	}
	section, foundLinks, err = b.bodyProcessors[b.currentTransferEncoding].Flush()
	if err != nil {
		return nil, nil, err
	}
	if shouldAddLastBoundaryLine {
		section.Data += fmt.Sprintf("\n%s\n", line)
	}
	b.totalBoundaryAppearanceNumber += 1
	b.currentContentType = processortypes.DefaultContentType
	b.currentTransferEncoding = processortypes.Default
	b.currentCharset = ""
	logrus.Infof("hit boundary=%s, num=%d", b.currentBoundary, b.totalBoundaryAppearanceNumber)
	return section, foundLinks, nil
}

func (b *bodyProcessor) setContentTransferEncodingFromLine(line string) bool {
	if !strings.HasPrefix(line, "Content-Transfer-Encoding:") {
		return false
	}

	if b.currentTransferEncoding != processortypes.Default {
		return false
	}

	switch {
	case strings.Contains(line, string(processortypes.Base64)):
		// call base64 until end of boundary
		b.currentTransferEncoding = processortypes.Base64
		logrus.Infof("hit transfer_encoding=%s, num=%d", b.currentTransferEncoding, b.totalBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.Quotedprintable)):
		// call quoted printable until end of boundary
		b.currentTransferEncoding = processortypes.Quotedprintable
		logrus.Infof("hit transfer_encoding=%s, num=%d", b.currentTransferEncoding, b.totalBoundaryAppearanceNumber)
		return true
	default:
		logrus.Warnf("unknown transfer encoding, line=%s", line)
		return false
	}
}

func (b *bodyProcessor) checkIfAttachment(headers string) (bool, string) {
	if !strings.Contains(headers, "Content-Disposition:") {
		return false, ""
	}
	r := regexp.MustCompile(`filename="(.*)"`)
	matches := r.FindAllStringSubmatch(headers, -1)
	fileName := ""
	if len(matches) == 0 {
		logrus.Warnf("failed to find filename inside headers=%s", headers)
		return false, ""
	}
	for _, v := range matches {
		logrus.Debugf("found value=%v", v)
		if v[1] != "" {
			fileName = v[1]
		}
	}

	return true, fileName
}

func (b *bodyProcessor) setCharsetFromLine(line string) bool {
	if !strings.Contains(line, `charset=`) {
		return false
	}

	if b.currentCharset != "" {
		return false
	}

	// add another boundary and set current boundary
	splitBoundary := strings.Split(line, "charset=")
	newBoundary := strings.ReplaceAll(splitBoundary[1], `"`, "")
	newBoundary = strings.ReplaceAll(newBoundary, ";", "")
	logrus.Infof("hit charset=%s", newBoundary)
	b.currentCharset = newBoundary
	return true
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
	if !strings.HasPrefix(line, "Content-Type:") {
		return false
	}

	if b.currentContentType != processortypes.DefaultContentType {
		return false
	}

	// handle current content type
	switch {
	case strings.Contains(line, string(processortypes.Word)) && strings.Contains(line, string(processortypes.GenericApplication)):
		b.currentContentType = processortypes.Word
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.totalBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.SevenZip)) && strings.Contains(line, string(processortypes.GenericApplication)):
		b.currentContentType = processortypes.SevenZip
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.totalBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.PowerPoint)) && strings.Contains(line, string(processortypes.GenericApplication)):
		b.currentContentType = processortypes.PowerPoint
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.totalBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.Excel)) && strings.Contains(line, string(processortypes.GenericApplication)):
		b.currentContentType = processortypes.Excel
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.totalBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.Rar)):
		b.currentContentType = processortypes.Rar
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.totalBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.Pdf)):
		b.currentContentType = processortypes.Pdf
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.totalBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.Image)):
		b.currentContentType = processortypes.Image
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.totalBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.TextPlain)):
		b.currentContentType = processortypes.TextPlain
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.totalBoundaryAppearanceNumber)
		return true
	case strings.Contains(line, string(processortypes.TextHTML)):
		b.currentContentType = processortypes.TextHTML
		logrus.Infof("hit content_type=%s, num=%d", b.currentContentType, b.totalBoundaryAppearanceNumber)
		return true
	default:
		logrus.Warnf("unknown content type, line=%s", line)
		return false
	}
}
