package contenttype

import (
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
)

type TextHTML struct {
	urlReplacer urlreplacer.UrlReplacerActions
}

func NewTextHTML(urlReplacer urlreplacer.UrlReplacerActions) ContentTypeActions {
	return &TextHTML{
		urlReplacer: urlReplacer,
	}
}

func (t *TextHTML) Parse(data string) (string, []string, error) {
	replacedHTML, foundLinks, err := t.urlReplacer.Replace(data)
	if err != nil {
		return "", nil, err
	}
	replacedHTML += "\n"
	return replacedHTML, foundLinks, nil
}
