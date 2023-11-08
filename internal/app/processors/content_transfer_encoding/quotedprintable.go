package contenttransferencoding

import (
	"bytes"
	"fmt"
	"io"
	"mime/quotedprintable"
	"strings"

	"github.com/decke/smtprelay/internal/app/processors/charset"
	contenttype "github.com/decke/smtprelay/internal/app/processors/content_type"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	"github.com/sirupsen/logrus"
)

type quotedPrintable struct {
	buf                     *strings.Builder
	lineWriter              *bytes.Buffer
	contentTypeMap          map[processortypes.ContentType]contenttype.ContentTypeActions
	headers                 string
	contentType             processortypes.ContentType
	contentTransferEncoding processortypes.ContentTransferEncoding
	charset                 string
	charsetActions          charset.CharsetActions
	isAttachment            bool
	attachmentFileName      string
}

func NewQuotedPrintableProcessor(contentTypeMap map[processortypes.ContentType]contenttype.ContentTypeActions, charsetActions charset.CharsetActions) *quotedPrintable {
	return &quotedPrintable{
		buf:            &strings.Builder{},
		lineWriter:     new(bytes.Buffer),
		contentTypeMap: contentTypeMap,
		charsetActions: charsetActions,
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

func (q *quotedPrintable) Flush() (section *processortypes.Section, links []string, err error) {
	logrus.Debug("flushing as quotedPrintable to rest of body")
	q.writeNewLine()
	qpBuf, foundLinks, err := q.parseQuotedPrintable()
	if err != nil {
		return nil, nil, err
	}
	q.writeLine(qpBuf)
	q.buf.Reset()
	data := q.lineWriter.String()
	q.lineWriter.Reset()
	headerString := q.headers
	q.headers = ""
	return &processortypes.Section{
		Name:                    string(q.Name()),
		ContentType:             q.contentType,
		ContentTransferEncoding: q.contentTransferEncoding,
		Data:                    data,
		Headers:                 headerString,
		Charset:                 q.charset,
		IsAttachment:            q.isAttachment,
		AttachmentFileName:      q.attachmentFileName,
	}, foundLinks, nil
}

func (q *quotedPrintable) SetSectionHeaders(headers string) {
	q.headers = headers
}

func (q *quotedPrintable) SetSectionContentType(contentType processortypes.ContentType) {
	q.contentType = contentType
}
func (q *quotedPrintable) SetSectionContentTransferEncoding(contentTransferEncoding processortypes.ContentTransferEncoding) {
	q.contentTransferEncoding = contentTransferEncoding
}
func (q *quotedPrintable) SetSectionCharset(charset string) {
	q.charset = charset
}
func (q *quotedPrintable) SetIsAttachment(isAttachment bool, fileName string) {
	q.isAttachment = isAttachment
	q.attachmentFileName = fileName
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

func (q *quotedPrintable) parseQuotedPrintable() (string, []string, error) {
	foundLinks := []string{}
	replacedLine := ""
	var err error
	data := q.buf.String()
	// converted, err := q.charsetActions.ConvertFromEncToUTF8(data, q.charset)
	// if err != nil {
	// 	return "", nil, err
	// }
	switch q.contentType {
	case processortypes.TextHTML:
		replacedLine, foundLinks, err = q.contentTypeMap[processortypes.TextHTML].Parse(data)
		if err != nil {
			return "", nil, err
		}
	case processortypes.TextPlain:
		replacedLine, foundLinks, err = q.contentTypeMap[processortypes.TextPlain].Parse(data)
		if err != nil {
			return "", nil, err
		}
	default:
		logrus.Warnf("content type %s is not implemented, not checking urls inside quoted printable", q.contentType)
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

	// convertedBack, err := q.charsetActions.ConvertFromUTF8ToEnc(qpBuf.String(), q.charset)
	// if err != nil {
	// 	logrus.Errorf("error in writing quoted prinatable buffer, err=%s", err)
	// 	return "", nil, err
	// }

	return qpBuf.String(), foundLinks, nil
}
