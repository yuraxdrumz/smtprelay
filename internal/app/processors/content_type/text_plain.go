package contenttype

import (
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
)

type TextPlain struct {
	urlReplacer urlreplacer.UrlReplacerActions
}

func NewTextPlain(urlReplacer urlreplacer.UrlReplacerActions) ContentTypeActions {
	return &TextPlain{
		urlReplacer: urlReplacer,
	}
}

func (t *TextPlain) Parse(data string) (string, []string, error) {
	return t.urlReplacer.Replace(data)
}
