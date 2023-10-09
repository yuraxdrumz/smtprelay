package html

import (
	"encoding/json"
	"log"

	"github.com/foolin/pagser"
)

type HTML struct{}

func New() *HTML {
	return &HTML{}
}

type PageData struct {
	// ImageSrcs []ImageSrc `pagser:"img"`
	Hrefs []Href `pagser:"a"`
	// Divs      []Div       `pagser:"div"`
	Paragraph []Paragraph `pagser:"p"`
}

type Paragraph struct {
	P string `pagser:"->text()"`
}

type ImageSrc struct {
	Src string `pagser:"->attr(src)"`
}

type Href struct {
	H string `pagser:"->attr(href)"`
}

type Div struct {
	D string `pagser:"->text()"`
}

func (h *HTML) ReplaceSrc(body string) (string, error) {
	p := pagser.New()
	//data parser model
	var data PageData
	//parse html data
	err := p.Parse(&data, body)
	//check error
	if err != nil {
		log.Fatal(err)
	}

	//print data
	log.Printf("Page data json: \n-------------\n%v\n-------------\n", toJson(data))
	return body, nil
}

func toJson(v interface{}) string {
	data, _ := json.MarshalIndent(v, "", "\t")
	return string(data)
}
