package charset

import "github.com/djimenez/iconv-go"

type CharsetActions interface {
	ConvertFromEncToUTF8(data string, enc string) (string, error)
	ConvertFromUTF8ToEnc(data string, toEnc string) (string, error)
}

type charset struct{}

func NewCharset() *charset {
	return &charset{}
}

func (c *charset) ConvertFromEncToUTF8(data string, enc string) (string, error) {
	converter, err := iconv.NewConverter(enc, "utf-8")
	if err != nil {
		return "", err
	}
	output, err := converter.ConvertString(data)
	if err != nil {
		return "", err
	}
	return output, nil
}

func (c *charset) ConvertFromUTF8ToEnc(data string, toEnc string) (string, error) {
	converter, err := iconv.NewConverter("utf-8", toEnc)
	if err != nil {
		return "", err
	}
	output, err := converter.ConvertString(data)
	if err != nil {
		return "", err
	}
	return output, nil
}
