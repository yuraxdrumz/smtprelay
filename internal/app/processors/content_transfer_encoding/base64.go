package contenttransferencoding

import (
	"bytes"
	"strings"

	b64Enc "encoding/base64"

	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type base64 struct {
	buf             *strings.Builder
	gotToBase64Body bool
	lineWriter      *bytes.Buffer
	urlReplacer     urlreplacer.UrlReplacerActions
}

func NewBase64Processor(lineWriter *bytes.Buffer, urlReplacer urlreplacer.UrlReplacerActions) *base64 {
	return &base64{
		buf:             &strings.Builder{},
		gotToBase64Body: false,
		lineWriter:      lineWriter,
		urlReplacer:     urlReplacer,
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

func (b *base64) Flush() []string {
	qpBuf, foundLinks := b.parseBase64()
	emailBase64 := b.insertNth(qpBuf, 76)
	b.writeLine(emailBase64)
	b.buf.Reset()
	b.gotToBase64Body = false
	return foundLinks
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

func (b *base64) parseBase64() (string, []string) {
	base64DecodedBytes, err := b64Enc.StdEncoding.DecodeString(b.buf.String())
	if err != nil {
		logrus.Errorf("error in writing base64 buffer, err=%s", err)
		return "", nil
	}

	base64String := string(base64DecodedBytes)
	base64String, foundLinks, err := b.urlReplacer.Replace(base64String)
	if err != nil {
		logrus.Errorf("error in writing base64 buffer, err=%s", err)
		return "", nil
	}
	base64ReplacedString := b64Enc.StdEncoding.EncodeToString([]byte(base64String))
	return base64ReplacedString, foundLinks
}
