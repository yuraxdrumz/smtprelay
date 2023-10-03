package bodyprocessors

import (
	"bytes"

	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

type defaultBody struct {
	lineWriter  *bytes.Buffer
	urlReplacer urlreplacer.UrlReplacerActions
}

func NewDefaultBodyProcessor(lineWriter *bytes.Buffer, urlReplacer urlreplacer.UrlReplacerActions) *defaultBody {
	return &defaultBody{
		lineWriter:  lineWriter,
		urlReplacer: urlReplacer,
	}
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

func (d *defaultBody) Process(lineString string, didReachBoundary bool, boundary string, boundaryNum int) (didProcess bool, links []string) {
	// if no quoted printable, replace line as usual
	replacedLine, foundLinks, err := d.urlReplacer.Replace(lineString)
	if err != nil {
		logrus.Errorf("error in writing line=%s, err=%s", lineString, err)
		return
	}
	d.writeLine(replacedLine)
	return true, foundLinks
}
