package contenttype

import (
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
)

type Default struct {
	urlReplacer urlreplacer.UrlReplacerActions
}

func NewDefault(urlReplacer urlreplacer.UrlReplacerActions) ContentTypeActions {
	return &Default{
		urlReplacer: urlReplacer,
	}
}

func (d *Default) Parse(data string) (string, []string, error) {
	return d.urlReplacer.Replace(data)
}
