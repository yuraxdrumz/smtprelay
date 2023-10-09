package contenttransferencoding

import (
	"bufio"
	"bytes"
	"strings"

	b64Enc "encoding/base64"

	"github.com/decke/smtprelay/internal/app/processors/forwarded"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type base64 struct {
	buf              *strings.Builder
	gotToBase64Body  bool
	lineWriter       *bytes.Buffer
	urlReplacer      urlreplacer.UrlReplacerActions
	forwardProcessor *forwarded.Forwarded
}

func NewBase64Processor(urlReplacer urlreplacer.UrlReplacerActions, forwardProcessor *forwarded.Forwarded) *base64 {
	return &base64{
		buf:              &strings.Builder{},
		gotToBase64Body:  false,
		lineWriter:       new(bytes.Buffer),
		urlReplacer:      urlReplacer,
		forwardProcessor: forwardProcessor,
	}
}

func (b *base64) Name() processortypes.ContentTransferEncoding {
	return processortypes.Base64
}

func (b *base64) writeNewLine() {
	_, err := b.lineWriter.WriteString("\n")
	if err != nil {
		logrus.Errorf("error in writing new line, err=%s", err)
		return
	}
}

func (b *base64) writeLine(line string) {
	_, err := b.lineWriter.WriteString(line)
	if err != nil {
		logrus.Errorf("error in writing line=%s, err=%s", line, err)
		return
	}
	b.writeNewLine()
}

func (b *base64) Flush(contentType processortypes.ContentType, contentTransferEncoding processortypes.ContentTransferEncoding, boundary string) (section *processortypes.Section, links []string) {
	qpBuf, foundLinks := b.parseBase64(contentType)
	emailBase64 := b.insertNth(qpBuf, 76)
	b.writeLine(emailBase64)
	b.buf.Reset()
	b.gotToBase64Body = false
	data := b.lineWriter.String()
	b.lineWriter.Reset()
	return &processortypes.Section{
		Name:                    string(b.Name()),
		Boundary:                boundary,
		ContentType:             contentType,
		ContentTransferEncoding: contentTransferEncoding,
		Data:                    data,
		Processed:               contentType != processortypes.Image,
	}, foundLinks
}

func (b *base64) insertNth(s string, n int) string {
	var buffer bytes.Buffer
	var n_1 = n - 1
	var l_1 = len(s) - 1
	for i, rune := range s {
		buffer.WriteRune(rune)
		if i%n == n_1 && i != l_1 {
			buffer.WriteRune('\n')
		}
	}
	return buffer.String()
}

func (b *base64) Process(lineString string, didReachBoundary bool, boundary string, boundaryNum int, contentType processortypes.ContentType) (didProcess bool, links []string) {
	switch {
	case !b.gotToBase64Body:
		b.writeLine(lineString)
		if lineString == "" {
			b.gotToBase64Body = true
		}
		return true, nil
	default:
		b.buf.WriteString(lineString)
		return true, nil
	}
}

func (b *base64) parseBase64(contentType processortypes.ContentType) (string, []string) {
	base64DecodedBytes, err := b64Enc.StdEncoding.DecodeString(b.buf.String())
	if err != nil {
		logrus.Errorf("error in writing base64 buffer, err=%s", err)
		return "", nil
	}

	base64String := string(base64DecodedBytes)
	checkedBase64String := &strings.Builder{}
	allLinks := []string{}
	bodyReader := strings.NewReader(base64String)
	scanner := bufio.NewScanner(bodyReader)
	scanner.Split(bufio.ScanLines)
	for scanner.Scan() {
		line := scanner
		if !b.forwardProcessor.IsForwarded() {
			b.forwardProcessor.CheckForwardedStartGmail(line.Text(), contentType)
		}

		if b.forwardProcessor.IsForwarded() {
			b.forwardProcessor.CheckForwardingFinishGmail(line.Text(), contentType)
			checkedBase64String.WriteString(line.Text())
			checkedBase64String.WriteString("\n")
			continue
		}

		replacedLine, foundLinks, err := b.urlReplacer.Replace(line.Text())
		if err != nil {
			logrus.Errorf("error in writing base64 buffer, err=%s", err)
			return "", nil
		}
		allLinks = append(allLinks, foundLinks...)
		checkedBase64String.WriteString(replacedLine)
		checkedBase64String.WriteString("\n")
	}

	base64ReplacedString := b64Enc.StdEncoding.EncodeToString([]byte(checkedBase64String.String()))
	return base64ReplacedString, allLinks
}
