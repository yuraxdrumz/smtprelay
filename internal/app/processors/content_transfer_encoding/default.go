package contenttransferencoding

import (
	"bytes"

	"github.com/decke/smtprelay/internal/app/processors/charset"
	contenttype "github.com/decke/smtprelay/internal/app/processors/content_type"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	"github.com/sirupsen/logrus"
)

type defaultBody struct {
	lineWriter              *bytes.Buffer
	headers                 string
	contentTypeMap          map[processortypes.ContentType]contenttype.ContentTypeActions
	contentType             processortypes.ContentType
	contentTransferEncoding processortypes.ContentTransferEncoding
	charset                 string
	charsetActions          charset.CharsetActions
}

func NewDefaultBodyProcessor(contentTypeMap map[processortypes.ContentType]contenttype.ContentTypeActions, charsetActions charset.CharsetActions) *defaultBody {
	return &defaultBody{
		lineWriter:     new(bytes.Buffer),
		contentTypeMap: contentTypeMap,
		charsetActions: charsetActions,
	}
}

func (b *defaultBody) Name() processortypes.ContentTransferEncoding {
	return processortypes.Default
}

func (d *defaultBody) writeNewLine() error {
	_, err := d.lineWriter.WriteString("\n")
	if err != nil {
		logrus.Errorf("error in writing new line, err=%s", err)
		return err
	}
	return nil
}

func (d *defaultBody) writeLine(line string) error {
	_, err := d.lineWriter.WriteString(line)
	if err != nil {
		logrus.Errorf("error in writing line=%s, err=%s", line, err)
		return err
	}
	return d.writeNewLine()
}

func (d *defaultBody) SetSectionHeaders(headers string) {
	d.headers = headers
}

func (d *defaultBody) SetSectionContentType(contentType processortypes.ContentType) {
	d.contentType = contentType
}
func (d *defaultBody) SetSectionContentTransferEncoding(contentTransferEncoding processortypes.ContentTransferEncoding) {
	d.contentTransferEncoding = contentTransferEncoding
}
func (d *defaultBody) SetSectionCharset(charset string) {
	d.charset = charset
}

func (d *defaultBody) Flush() (section *processortypes.Section, links []string, err error) {
	data := d.lineWriter.String()
	d.lineWriter.Reset()
	headerString := d.headers
	d.headers = ""

	replacedData, foundLinks, err := d.contentTypeMap[processortypes.DefaultContentType].Parse(data)
	if err != nil {
		logrus.Errorf("error in writing line=%s, err=%s", data, err)
		return nil, nil, err
	}

	return &processortypes.Section{
		Name:                    string(d.Name()),
		ContentType:             d.contentType,
		ContentTransferEncoding: d.contentTransferEncoding,
		Data:                    replacedData,
		Headers:                 headerString,
		Charset:                 d.charset,
	}, foundLinks, nil
}

func (d *defaultBody) Process(lineString string) error {
	return d.writeLine(lineString)
}
