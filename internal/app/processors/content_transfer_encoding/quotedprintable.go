package contenttransferencoding

import (
	"bytes"
	"fmt"
	"io"
	"mime/quotedprintable"
	"strings"

	contenttype "github.com/decke/smtprelay/internal/app/processors/content_type"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	"github.com/sirupsen/logrus"
)

type quotedPrintable struct {
	buf            *strings.Builder
	lineWriter     *bytes.Buffer
	contentTypeMap map[processortypes.ContentType]contenttype.ContentTypeActions
	headers        string
}

func NewQuotedPrintableProcessor(contentTypeMap map[processortypes.ContentType]contenttype.ContentTypeActions) *quotedPrintable {
	return &quotedPrintable{
		buf:            &strings.Builder{},
		lineWriter:     new(bytes.Buffer),
		contentTypeMap: contentTypeMap,
	}
}

func (b *quotedPrintable) Name() processortypes.ContentTransferEncoding {
	return processortypes.Quotedprintable
}

func (q *quotedPrintable) writeNewLine() error {
	_, err := q.lineWriter.WriteString("\n")
	if err != nil {
		logrus.Errorf("error in writing new line, err=%s", err)
		return err
	}
	return nil
}

func (q *quotedPrintable) writeLine(line string) error {
	_, err := q.lineWriter.WriteString(line)
	if err != nil {
		logrus.Errorf("error in writing line=%s, err=%s", line, err)
		return err
	}
	return q.writeNewLine()
}

func (q *quotedPrintable) Flush(contentType processortypes.ContentType, contentTransferEncoding processortypes.ContentTransferEncoding) (section *processortypes.Section, links []string, err error) {
	logrus.Debug("flushing as quotedPrintable to rest of body")
	q.writeNewLine()
	qpBuf, foundLinks, err := q.parseQuotedPrintable(contentType)
	if err != nil {
		return nil, nil, err
	}
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
	}, foundLinks, nil
}

func (q *quotedPrintable) SetSectionHeaders(headers string) {
	q.headers = headers
}

func (q *quotedPrintable) Process(lineString string) error {
	logrus.Debugf("got to quoted printable, line=%s", lineString)
	r := strings.NewReader(fmt.Sprintf("%s\n", lineString))
	qpReader := quotedprintable.NewReader(r)
	decodedString, err := io.ReadAll(qpReader)
	if err != nil {
		return err
	}
	decoded := string(decodedString)
	logrus.Debugf("decoded quote string=%s", decoded)
	_, err = q.buf.WriteString(decoded)
	return err
}

func (q *quotedPrintable) parseQuotedPrintable(contentType processortypes.ContentType) (string, []string, error) {
	foundLinks := []string{}
	replacedLine := ""
	var err error
	switch contentType {
	case processortypes.TextHTML:
		rawHTML := q.buf.String()
		replacedLine, foundLinks, err = q.contentTypeMap[processortypes.TextHTML].Parse(rawHTML)
		if err != nil {
			return "", nil, err
		}
	case processortypes.TextPlain:
		str := q.buf.String()
		replacedLine, foundLinks, err = q.contentTypeMap[processortypes.TextPlain].Parse(str)
		if err != nil {
			return "", nil, err
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
		return "", nil, err
	}
	err = qp.Close()
	if err != nil {
		logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
		return "", nil, err
	}
	return qpBuf.String(), foundLinks, nil
}
