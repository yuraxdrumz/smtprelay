package contenttransferencoding

import (
	"bytes"
	"fmt"
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
	headers          string
}

func NewQuotedPrintableProcessor(urlReplacer urlreplacer.UrlReplacerActions, forwardProcessor *forwarded.Forwarded) *quotedPrintable {
	return &quotedPrintable{
		buf:              &strings.Builder{},
		lineWriter:       new(bytes.Buffer),
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

func (q *quotedPrintable) Flush(contentType processortypes.ContentType, contentTransferEncoding processortypes.ContentTransferEncoding) (section *processortypes.Section, links []string) {
	logrus.Debug("flushing as quotedPrintable to rest of body")
	q.writeNewLine()
	qpBuf, foundLinks := q.parseQuotedPrintable()
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

func (q *quotedPrintable) getHeaders() map[string]string {
	headersMap := map[string]string{}
	for _, header := range strings.Split(q.headers, "\n") {
		headerSplit := strings.Split(header, ":")
		if len(headerSplit) == 2 {
			key := headerSplit[0]
			value := headerSplit[1]
			headersMap[key] = strings.TrimSpace(value)
		}
	}
	return headersMap
}

func (q *quotedPrintable) Process(lineString string) {
	// headerMap := q.getHeaders()
	// contentTypeUnprocessed := headerMap["Content-Type"]
	// var contentType processortypes.ContentType
	// switch {
	// case strings.Contains(contentTypeUnprocessed, "text/plain"):
	// 	contentType = processortypes.TextPlain
	// case strings.Contains(contentTypeUnprocessed, "text/html"):
	// 	contentType = processortypes.TextHTML
	// }

	// if q.forwardProcessor.IsForwarded() {
	// 	q.forwardProcessor.CheckForwardingFinishGmail(lineString, contentType)
	// 	q.writeLine(lineString)
	// 	return
	// }

	// isForwarded := q.forwardProcessor.CheckForwardedStartGmail(lineString, contentType)
	// if isForwarded {
	// 	// we may have accumulated quoted printable data in buffer, flush
	// 	accumulated := q.buf.String()
	// 	q.writeNewLine()
	// 	// if context type is text html, we need to write to buf + check replace
	// 	// if content type is text plain, we need to check replace
	// 	switch {
	// 	case contentType == processortypes.TextPlain && accumulated != "":
	// 		accumulated = q.buf.String()
	// 		replacedLine, _, err := q.urlReplacer.Replace(accumulated)
	// 		if err != nil {
	// 			logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
	// 			return
	// 		}
	// 		q.writeLine(replacedLine)
	// 		q.writeNewLine()
	// 		q.writeLine(lineString)
	// 		q.buf.Reset()
	// 		return
	// 	case contentType == processortypes.TextHTML && accumulated != "":
	// 		r := strings.NewReader(lineString)
	// 		qpReader := quotedprintable.NewReader(r)
	// 		decodedString, _ := io.ReadAll(qpReader)
	// 		decoded := string(decodedString)
	// 		logrus.Debugf("decoded quote string=%s", decoded)
	// 		q.buf.WriteString(decoded)
	// 		accumulated := q.buf.String()
	// 		replacedLine, _, err := q.urlReplacer.Replace(accumulated)
	// 		if err != nil {
	// 			logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
	// 			return
	// 		}
	// 		qpBuf := new(bytes.Buffer)
	// 		qp := quotedprintable.NewWriter(qpBuf)
	// 		_, err = qp.Write([]byte(replacedLine))
	// 		if err != nil {
	// 			logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
	// 			return
	// 		}
	// 		err = qp.Close()
	// 		if err != nil {
	// 			logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
	// 			return
	// 		}
	// 		q.writeLine(qpBuf.String())
	// 		q.buf.Reset()
	// 		return
	// 	default:
	// 		q.writeLine(lineString)
	// 		return
	// 	}
	// }

	logrus.Debugf("got to quoted printable, line=%s", lineString)
	r := strings.NewReader(fmt.Sprintf("%s\n", lineString))
	qpReader := quotedprintable.NewReader(r)
	decodedString, _ := io.ReadAll(qpReader)
	decoded := string(decodedString)
	logrus.Debugf("decoded quote string=%s", decoded)
	q.buf.WriteString(decoded)
	// q.buf.WriteString("\n")
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
