package bodyprocessors

import (
	"bytes"
	"strings"

	b64Enc "encoding/base64"

	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type base64 struct {
	buf         *strings.Builder
	isBase64    bool
	lineWriter  *bytes.Buffer
	urlReplacer urlreplacer.UrlReplacerActions
}

func NewBase64Processor(lineWriter *bytes.Buffer, urlReplacer urlreplacer.UrlReplacerActions) *base64 {
	return &base64{
		buf:         &strings.Builder{},
		isBase64:    false,
		lineWriter:  lineWriter,
		urlReplacer: urlReplacer,
	}
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

func (b *base64) Process(lineString string, didReachBoundary bool, boundary string) (didProcess bool, links []string) {
	if strings.Contains(lineString, "Content-Transfer-Encoding: base64") {
		b.writeLine(lineString)
		b.isBase64 = true
		return true, nil
	}

	if didReachBoundary && b.buf.Len() > 0 {
		// flush
		logrus.Debug("found start of another boundary, flushing as base64 to rest of body")
		b.writeNewLine()
		qpBuf, foundLinks := b.parseBase64()
		b.writeLine(qpBuf)
		b.writeNewLine()
		b.writeLine(lineString)
		b.buf.Reset()
		b.isBase64 = false
		return true, foundLinks
	}

	if b.isBase64 {
		b.buf.WriteString(lineString)
		return true, nil
	}

	return false, nil
}

func (b *base64) parseBase64() (string, []string) {
	base64DecodedBytes, err := b64Enc.StdEncoding.DecodeString(b.buf.String())
	if err != nil {
		logrus.Errorf("error in writing base64 buffer, err=%s", err)
		return "", nil
	}
	replacedBase64, foundLinks, err := b.urlReplacer.Replace(string(base64DecodedBytes))
	if err != nil {
		logrus.Errorf("error in writing base64 buffer, err=%s", err)
		return "", nil
	}
	base64ReplacedString := b64Enc.StdEncoding.EncodeToString([]byte(replacedBase64))
	return base64ReplacedString, foundLinks
}
