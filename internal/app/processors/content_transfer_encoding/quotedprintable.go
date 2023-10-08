package contenttransferencoding

import (
	"bytes"
	"io"
	"mime/quotedprintable"
	"strings"

	"github.com/decke/smtprelay/internal/app/processors/forwarded"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type quotedPrintable struct {
	buf              *strings.Builder
	lineWriter       *bytes.Buffer
	urlReplacer      urlreplacer.UrlReplacerActions
	forwardProcessor *forwarded.Forwarded
}

func NewQuotedPrintableProcessor(lineWriter *bytes.Buffer, urlReplacer urlreplacer.UrlReplacerActions, forwardProcessor *forwarded.Forwarded) *quotedPrintable {
	return &quotedPrintable{
		buf:              &strings.Builder{},
		lineWriter:       lineWriter,
		urlReplacer:      urlReplacer,
		forwardProcessor: forwardProcessor,
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

func (q *quotedPrintable) Flush(contentType processortypes.ContentType) []string {
	logrus.Debug("flushing as quotedPrintable to rest of body")
	q.writeNewLine()
	qpBuf, foundLinks := q.parseQuotedPrintable()
	q.writeLine(qpBuf)
	q.writeNewLine()
	q.buf.Reset()
	return foundLinks
}

func (q *quotedPrintable) Process(lineString string, didReachBoundary bool, boundary string, boundaryNum int, contentType processortypes.ContentType) (didProcess bool, links []string) {
	if q.forwardProcessor.IsForwarded() {
		q.forwardProcessor.CheckForwardingFinishGmail(lineString, contentType)
		q.writeLine(lineString)
		return true, nil
	}

	isForwarded := q.forwardProcessor.CheckForwardedStartGmail(lineString, contentType)
	if isForwarded {
		// we may have accumulated quoted printable data in buffer, flush
		accumulated := q.buf.String()
		q.writeNewLine()
		if accumulated != "" {
			q.writeLine(accumulated)
			q.buf.Reset()
		}
		q.writeLine(lineString)
		return true, nil
	}

	logrus.Debugf("got to quoted printable, boundary=%s, line=%s", boundary, lineString)
	r := strings.NewReader(lineString)
	qpReader := quotedprintable.NewReader(r)
	decodedString, _ := io.ReadAll(qpReader)
	decoded := string(decodedString)
	logrus.Debugf("decoded quote string=%s", decoded)
	q.buf.WriteString(decoded)
	return true, nil
}

func (q *quotedPrintable) parseQuotedPrintable() (string, []string) {
	rawHTML := q.buf.String()
	replacedLine, foundLinks, err := q.urlReplacer.Replace(rawHTML)
	if err != nil {
		logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
		return "", nil
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
