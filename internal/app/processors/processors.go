package processors

import (
	"bytes"
	"fmt"
	"strings"

	contenttransferencoding "github.com/decke/smtprelay/internal/app/processors/content_transfer_encoding"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type ContentTransferProcessor interface {
	Process(lineString string, didReachBoundary bool, boundary string, boundaryNum int, contentType processortypes.ContentType) (didProcess bool, links []string)
	Flush() []string
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

func NewBodyProcessor(tmpBuffer *bytes.Buffer, urlReplacer urlreplacer.UrlReplacerActions) *bodyProcessor {
	processorMap := map[processortypes.ContentTransferEncoding]ContentTransferProcessor{}
	defaultProcessor := contenttransferencoding.NewDefaultBodyProcessor(tmpBuffer, urlReplacer)
	base64Processor := contenttransferencoding.NewBase64Processor(tmpBuffer, urlReplacer)
	quotedPrintableProcessor := contenttransferencoding.NewQuotedPrintableProcessor(tmpBuffer, urlReplacer)
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

func (b *bodyProcessor) ProcessBody(line string) (links []string, err error) {
	links = []string{}
	if len(b.boundaries) == 0 {
		return nil, fmt.Errorf("boundary should be set before processing body")
	}
	boundaryStart := fmt.Sprintf("--%s", b.currentBoundary)
	boundaryEnd := fmt.Sprintf("--%s--", b.currentBoundary)
	didHitBoundary := strings.HasPrefix(line, boundaryStart)
	// if we hit another boundary call flush of current transfer encoding
	if didHitBoundary {
		if line == boundaryEnd && len(b.boundaries) > 1 {
			// pop boundary, set current boundary to one before
			b.boundaries = b.boundaries[:len(b.boundaries)-1]
			logrus.Debugf("popping boundary=%s", b.currentBoundary)
			b.currentBoundary = b.boundaries[len(b.boundaries)-1]
			logrus.Debugf("setting boundary to=%s", b.currentBoundary)
		}
		foundLinks := b.bodyProcessors[b.currentTransferEncoding].Flush()
		links = append(links, foundLinks...)
		b.currentBoundaryAppearanceNumber += 1
		b.currentContentType = processortypes.DefaultContentType
		b.currentTransferEncoding = processortypes.Default
		logrus.Debugf("hit boundary=%s, num=%d", b.currentBoundary, b.currentBoundaryAppearanceNumber)
	}

	// if we are still in current boundary, no need to check content type and encoding, call process
	if b.currentBoundaryAppearanceNumber == b.lastCheckedBoundaryNumber {
		// skip image until next boundary
		if b.currentContentType == processortypes.Image {
			_, _ = b.bodyProcessors[processortypes.Default].Process(line, didHitBoundary, b.currentBoundary, b.currentBoundaryAppearanceNumber, b.currentContentType)
			return nil, nil
		}
		_, foundLinks := b.bodyProcessors[b.currentTransferEncoding].Process(line, didHitBoundary, b.currentBoundary, b.currentBoundaryAppearanceNumber, b.currentContentType)
		links = append(links, foundLinks...)
		return links, nil
	}

	// handle current content type
	switch {
	case strings.Contains(line, string(processortypes.MultiPart)):
		// add another boundary and set current boundary
		if strings.Contains(line, `boundary=`) {
			splitBoundary := strings.Split(line, "boundary=")
			newBoundary := strings.ReplaceAll(splitBoundary[1], `"`, "")
			logrus.Debugf("found new boundary=%s", newBoundary)
			b.boundaries = append(b.boundaries, newBoundary)
			b.currentBoundary = newBoundary
		}
	case strings.Contains(line, string(processortypes.Image)):
		b.currentContentType = processortypes.Image
		logrus.Debugf("hit content_type=%s, num=%d", b.currentContentType, b.currentBoundaryAppearanceNumber)
	case strings.Contains(line, string(processortypes.TextPlain)):
		b.currentContentType = processortypes.TextPlain
		logrus.Debugf("hit content_type=%s, num=%d", b.currentContentType, b.currentBoundaryAppearanceNumber)
	case strings.Contains(line, string(processortypes.TextHTML)):
		b.currentContentType = processortypes.TextHTML
		logrus.Debugf("hit content_type=%s, num=%d", b.currentContentType, b.currentBoundaryAppearanceNumber)
	case strings.Contains(line, string(processortypes.Base64)):
		// call base64 until end of boundary
		b.currentTransferEncoding = processortypes.Base64
		b.lastCheckedBoundaryNumber = b.currentBoundaryAppearanceNumber
		logrus.Debugf("hit transfer_encoding=%s, num=%d", b.currentTransferEncoding, b.currentBoundaryAppearanceNumber)
	case strings.Contains(line, string(processortypes.Quotedprintable)):
		// call quoted printable until end of boundary
		b.currentTransferEncoding = processortypes.Quotedprintable
		b.lastCheckedBoundaryNumber = b.currentBoundaryAppearanceNumber
		logrus.Debugf("hit transfer_encoding=%s, num=%d", b.currentTransferEncoding, b.currentBoundaryAppearanceNumber)
	}

	_, foundLinks := b.bodyProcessors[processortypes.Default].Process(line, didHitBoundary, b.currentBoundary, b.currentBoundaryAppearanceNumber, b.currentContentType)
	links = append(links, foundLinks...)
	return links, nil
}
