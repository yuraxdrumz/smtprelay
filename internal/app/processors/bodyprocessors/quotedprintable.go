package bodyprocessors

import (
	"bytes"
	"io"
	"mime/quotedprintable"
	"strings"

	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type quotedPrintable struct {
	buf               *strings.Builder
	isQuotedPrintable bool
	lineWriter        *bytes.Buffer
	urlReplacer       urlreplacer.UrlReplacerActions
	isForwarded       bool
}

func NewQuotedPrintableProcessor(lineWriter *bytes.Buffer, urlReplacer urlreplacer.UrlReplacerActions) *quotedPrintable {
	return &quotedPrintable{
		buf:               &strings.Builder{},
		isQuotedPrintable: false,
		lineWriter:        lineWriter,
		urlReplacer:       urlReplacer,
		isForwarded:       false,
	}
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

func (q *quotedPrintable) writeLineNoNewLine(line string) {
	_, err := q.lineWriter.WriteString(line)
	if err != nil {
		logrus.Errorf("error in writing line=%s, err=%s", line, err)
		return
	}
}

func (q *quotedPrintable) Process(lineString string, didReachBoundary bool, boundary string, boundaryNum int) (didProcess bool, links []string) {
	if strings.Contains(lineString, "Content-Transfer-Encoding: quoted-printable") {
		q.writeLine(lineString)
		q.isQuotedPrintable = true
		return true, nil
	}

	if strings.Contains(lineString, "---------- Forwarded message ---------") {
		// we may have accumulated quoted printable data in buffer, flush
		accumulated := q.buf.String()
		q.writeNewLine()
		if accumulated != "" {
			q.writeLineNoNewLine(accumulated)
			q.buf.Reset()
		}
		// q.writeNewLine()
		q.writeLine(lineString)
		q.isForwarded = true
		return true, nil
	}

	if q.isForwarded {
		if lineString == "" {
			q.isForwarded = false
		}
		q.writeLine(lineString)
		return true, nil
	}

	// flush
	if didReachBoundary && q.buf.Len() > 0 {
		logrus.Debug("found start of another boundary, flushing as quotedPrintable to rest of body")
		q.writeNewLine()
		// check if we have forwarded string
		qpBuf, foundLinks := q.parseQuotedPrintable()
		q.writeLine(qpBuf)
		q.writeNewLine()
		q.writeLine(lineString)
		q.buf.Reset()
		q.isQuotedPrintable = false
		return true, foundLinks
	}

	if q.isQuotedPrintable {
		logrus.Debugf("got to quoted printable, boundary=%s, line=%s", boundary, lineString)
		r := strings.NewReader(lineString)
		qpReader := quotedprintable.NewReader(r)
		decodedString, _ := io.ReadAll(qpReader)
		decoded := string(decodedString)
		logrus.Debugf("decoded quote string=%s", decoded)
		q.buf.WriteString(decoded)
		return true, nil
	}

	return false, nil
}

func (q *quotedPrintable) parseQuotedPrintable() (string, []string) {
	replacedLine, foundLinks, err := q.urlReplacer.Replace(q.buf.String())
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
