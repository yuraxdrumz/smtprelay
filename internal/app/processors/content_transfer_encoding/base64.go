package contenttransferencoding

import (
	"bufio"
	"bytes"
	"strings"

	b64Enc "encoding/base64"

	contenttype "github.com/decke/smtprelay/internal/app/processors/content_type"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	"github.com/sirupsen/logrus"
)

type base64 struct {
	buf             *strings.Builder
	gotToBase64Body bool
	lineWriter      *bytes.Buffer
	contentTypeMap  map[processortypes.ContentType]contenttype.ContentTypeActions
	headers         string
}

func NewBase64Processor(contentTypeMap map[processortypes.ContentType]contenttype.ContentTypeActions) *base64 {
	return &base64{
		buf:             &strings.Builder{},
		gotToBase64Body: false,
		lineWriter:      new(bytes.Buffer),
		contentTypeMap:  contentTypeMap,
	}
}

func (b *base64) Name() processortypes.ContentTransferEncoding {
	return processortypes.Base64
}

func (b *base64) writeNewLine() error {
	_, err := b.lineWriter.WriteString("\n")
	if err != nil {
		logrus.Errorf("error in writing new line, err=%s", err)
		return err
	}
	return nil
}

func (b *base64) writeLine(line string) error {
	_, err := b.lineWriter.WriteString(line)
	if err != nil {
		logrus.Errorf("error in writing line=%s, err=%s", line, err)
		return err
	}
	return b.writeNewLine()
}

func (b *base64) Flush(contentType processortypes.ContentType, contentTransferEncoding processortypes.ContentTransferEncoding) (section *processortypes.Section, links []string, err error) {
	qpBuf, foundLinks, err := b.parseBase64(contentType)
	if err != nil {
		return nil, nil, err
	}
	emailBase64 := b.insertNth(qpBuf, 76)
	b.writeLine(emailBase64)
	b.buf.Reset()
	b.gotToBase64Body = false
	data := b.lineWriter.String()
	b.lineWriter.Reset()
	headerString := b.headers
	b.headers = ""
	return &processortypes.Section{
		Name:                    string(b.Name()),
		ContentType:             contentType,
		ContentTransferEncoding: contentTransferEncoding,
		Data:                    data,
		Headers:                 headerString,
	}, foundLinks, nil
}

func (b *base64) SetSectionHeaders(headers string) {
	b.headers = headers
}

func (b *base64) insertNth(s string, n int) string {
	var buffer bytes.Buffer
	var n_1 = n - 1
	var l_1 = len(s) - 1
	for i, rune := range s {
		buffer.WriteRune(rune)
		if i%n == n_1 && i != l_1 {
			buffer.WriteRune('\n')
		}
	}
	return buffer.String()
}

func (b *base64) Process(lineString string) error {
	switch {
	case !b.gotToBase64Body:
		err := b.writeLine(lineString)
		if err != nil {
			return err
		}
		if lineString == "" {
			b.gotToBase64Body = true
		}
	default:
		_, err := b.buf.WriteString(lineString)
		return err
	}

	return nil
}

func (b *base64) parseBase64(contentType processortypes.ContentType) (string, []string, error) {
	data := b.buf.String()
	base64DecodedBytes, err := b64Enc.StdEncoding.DecodeString(data)
	if err != nil {
		logrus.Errorf("error in writing base64 buffer, err=%s", err)
		return "", nil, err
	}
	switch contentType {
	case processortypes.TextHTML:
		replacedHTML, foundLinks, err := b.contentTypeMap[processortypes.TextHTML].Parse(string(base64DecodedBytes))
		if err != nil {
			logrus.Errorf("error in replacing base64 buffer, err=%s", err)
			return "", nil, err
		}
		base64ReplacedString := b64Enc.StdEncoding.EncodeToString([]byte(replacedHTML))
		return base64ReplacedString, foundLinks, nil
	case processortypes.TextPlain:
		base64String := string(base64DecodedBytes)
		checkedBase64String := &strings.Builder{}
		bodyReader := strings.NewReader(base64String)
		scanner := bufio.NewScanner(bodyReader)
		scanner.Split(bufio.ScanLines)
		allLinks := []string{}
		for scanner.Scan() {
			line := scanner
			replacedLine, foundLinks, err := b.contentTypeMap[processortypes.TextPlain].Parse(line.Text())
			if err != nil {
				logrus.Errorf("error in writing base64 buffer, err=%s", err)
				return "", nil, err
			}
			allLinks = append(allLinks, foundLinks...)
			checkedBase64String.WriteString(replacedLine)
			checkedBase64String.WriteString("\n")
		}

		base64ReplacedString := b64Enc.StdEncoding.EncodeToString([]byte(checkedBase64String.String()))
		return base64ReplacedString, allLinks, nil
	default:
		logrus.Warnf("content type %s is not implemented, not checking urls inside base64", contentType)
		return data, nil, nil
	}
}
