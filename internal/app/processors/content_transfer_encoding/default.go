package contenttransferencoding

import (
	"bytes"

	"github.com/decke/smtprelay/internal/app/processors/forwarded"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type defaultBody struct {
	lineWriter       *bytes.Buffer
	urlReplacer      urlreplacer.UrlReplacerActions
	forwardProcessor *forwarded.Forwarded
	headers          string
}

func NewDefaultBodyProcessor(urlReplacer urlreplacer.UrlReplacerActions, forwardProcessor *forwarded.Forwarded) *defaultBody {
	return &defaultBody{
		lineWriter:       new(bytes.Buffer),
		urlReplacer:      urlReplacer,
		forwardProcessor: forwardProcessor,
	}
}

func (b *defaultBody) Name() processortypes.ContentTransferEncoding {
	return processortypes.Default
}

func (d *defaultBody) writeNewLine() {
	_, err := d.lineWriter.WriteString("\n")
	if err != nil {
		logrus.Errorf("error in writing new line, err=%s", err)
		return
	}
}

func (d *defaultBody) writeLine(line string) {
	_, err := d.lineWriter.WriteString(line)
	if err != nil {
		logrus.Errorf("error in writing line=%s, err=%s", line, err)
		return
	}
	d.writeNewLine()
}

func (d *defaultBody) SetSectionHeaders(headers string) {
	d.headers = headers
}

func (d *defaultBody) Flush(contentType processortypes.ContentType, contentTransferEncoding processortypes.ContentTransferEncoding, boundary string, boundaryEnd string) (section *processortypes.Section, links []string) {
	data := d.lineWriter.String()
	d.lineWriter.Reset()
	headerString := d.headers
	d.headers = ""
	replacedData, foundLinks, err := d.urlReplacer.Replace(data)
	if err != nil {
		logrus.Errorf("error in writing line=%s, err=%s", data, err)
		return
	}
	logrus.Infof("data from default %s", data)
	logrus.Infof("replacedData from default %s", replacedData)
	return &processortypes.Section{
		Name:                    string(d.Name()),
		ContentType:             contentType,
		ContentTransferEncoding: contentTransferEncoding,
		Headers:                 headerString,
		Data:                    replacedData,
	}, foundLinks
}

func (d *defaultBody) Process(lineString string) {
	// if no quoted printable, replace line as usual
	d.writeLine(lineString)
}
