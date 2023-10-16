package urlreplacer

import (
	"strings"

	"github.com/PuerkitoBio/goquery"
	"github.com/sirupsen/logrus"
)

type HTML struct {
	urlReplacer UrlReplacerActions
}

func NewHTMLReplacer(urlReplacer UrlReplacerActions) UrlReplacerActions {
	return &HTML{
		urlReplacer: urlReplacer,
	}
}

func (h *HTML) Replace(str string) (replaced string, links []string, err error) {
	// converter, err := iconv.NewConverter("koi8-r", "utf-8")
	// if err != nil {
	// 	return "", nil, err
	// }
	// defer converter.Close()
	// output, err := converter.ConvertString(str)
	// if err != nil {
	// 	return "", nil, err
	// }
	doc, err := goquery.NewDocumentFromReader(strings.NewReader(str))
	if err != nil {
		return "", nil, err
	}

	doc.Find("*").Each(func(i int, s *goquery.Selection) {
		for _, node := range s.Nodes {
			for _, attr := range node.Attr {
				if attr.Key == "href" && !strings.HasPrefix(attr.Val, "mailto:") {
					links = append(links, attr.Val)
					replaced, _, err := h.urlReplacer.Replace(attr.Val)
					if err != nil {
						logrus.Error(err)
						continue
					}
					logrus.Debugf("replacing url=%s to url=%s", attr.Val, replaced)
					s.SetAttr(attr.Key, replaced)
				}
			}
		}

	})

	newBody, err := doc.Html()
	if err != nil {
		return "", nil, err
	}

	if !strings.Contains(str, "<html") {
		newBody = strings.Replace(newBody, "<html><head></head><body>", "", 1)
	}
	if !strings.Contains(str, "</html>") {
		newBody = strings.Replace(newBody, "</body></html>", "", 1)
	}
	return newBody, links, nil
}
