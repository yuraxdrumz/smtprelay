package contenttransferencoding

import (
	"bytes"
	"fmt"
	"io"
	"mime/quotedprintable"
	"strings"

	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type quotedPrintable struct {
	buf             *strings.Builder
	lineWriter      *bytes.Buffer
	urlReplacer     urlreplacer.UrlReplacerActions
	htmlURLReplacer urlreplacer.UrlReplacerActions
	headers         string
}

func NewQuotedPrintableProcessor(urlReplacer urlreplacer.UrlReplacerActions, htmlURLReplacer urlreplacer.UrlReplacerActions) *quotedPrintable {
	return &quotedPrintable{
		buf:             &strings.Builder{},
		lineWriter:      new(bytes.Buffer),
		urlReplacer:     urlReplacer,
		htmlURLReplacer: htmlURLReplacer,
	}
}

func (b *quotedPrintable) Name() processortypes.ContentTransferEncoding {
	return processortypes.Quotedprintable
}

func (q *quotedPrintable) writeNewLine() {
	_, err := q.lineWriter.WriteString("\n")
	if err != nil {
		logrus.Errorf("error in writing new line, err=%s", err)
		return
	}
}

func (q *quotedPrintable) writeLine(line string) {
	_, err := q.lineWriter.WriteString(line)
	if err != nil {
		logrus.Errorf("error in writing line=%s, err=%s", line, err)
		return
	}
	q.writeNewLine()
}

func (q *quotedPrintable) Flush(contentType processortypes.ContentType, contentTransferEncoding processortypes.ContentTransferEncoding) (section *processortypes.Section, links []string) {
	logrus.Debug("flushing as quotedPrintable to rest of body")
	q.writeNewLine()
	qpBuf, foundLinks := q.parseQuotedPrintable(contentType)
	q.writeLine(qpBuf)
	q.writeNewLine()
	q.buf.Reset()
	data := q.lineWriter.String()
	q.lineWriter.Reset()
	headerString := q.headers
	q.headers = ""
	return &processortypes.Section{
		Name:                    string(q.Name()),
		ContentType:             contentType,
		ContentTransferEncoding: contentTransferEncoding,
		Data:                    data,
		Headers:                 headerString,
	}, foundLinks
}

func (q *quotedPrintable) SetSectionHeaders(headers string) {
	q.headers = headers
}

func (q *quotedPrintable) Process(lineString string) {
	logrus.Debugf("got to quoted printable, line=%s", lineString)
	r := strings.NewReader(fmt.Sprintf("%s\n", lineString))
	qpReader := quotedprintable.NewReader(r)
	decodedString, _ := io.ReadAll(qpReader)
	decoded := string(decodedString)
	logrus.Debugf("decoded quote string=%s", decoded)
	q.buf.WriteString(decoded)
}

func (q *quotedPrintable) parseQuotedPrintable(contentType processortypes.ContentType) (string, []string) {
	foundLinks := []string{}
	replacedLine := ""
	var err error
	switch contentType {
	case processortypes.TextHTML:
		rawHTML := q.buf.String()
		replacedLine, foundLinks, err = q.htmlURLReplacer.Replace(rawHTML)
		if err != nil {
			logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
			return "", nil
		}
	case processortypes.TextPlain:
		str := q.buf.String()
		replacedLine, foundLinks, err = q.urlReplacer.Replace(str)
		if err != nil {
			logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
			return "", nil
		}
	default:
		logrus.Warnf("content type %s is not implemented, not checking urls inside quoted printable", contentType)
		replacedLine = q.buf.String()
	}

	qpBuf := new(bytes.Buffer)
	qp := quotedprintable.NewWriter(qpBuf)
	_, err = qp.Write([]byte(replacedLine))
	if err != nil {
		logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
		return "", nil
	}
	err = qp.Close()
	if err != nil {
		logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
		return "", nil
	}
	return qpBuf.String(), foundLinks
}
