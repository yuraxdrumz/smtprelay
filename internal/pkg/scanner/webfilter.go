package scanner

import (
	"encoding/json"
	"fmt"
	"net/http"

	"github.com/decke/smtprelay/internal/pkg/httpgetter"
)

type webfilter struct {
	httpGetter *httpgetter.HTTPGetter
	url        string
	clientID   string
}

type WebFilterResponse struct {
	ResponseCode        int      `json:"response_code"`
	MaliciousCategories []string `json:"malicious_categories"`
	DomainGrey          bool     `json:"domain_gret"`
}

func (w *WebFilterResponse) toScanResult() *ScanResult {
	return &ScanResult{
		StatusCode:    w.ResponseCode,
		StatusMessage: w.MaliciousCategories,
		DomainGrey:    w.DomainGrey,
	}
}

func NewWebFilter(httpGetter *httpgetter.HTTPGetter, url string, clientID string) Scanner {
	return &webfilter{
		httpGetter: httpGetter,
		url:        url,
		clientID:   clientID,
	}
}

func (w *webfilter) ScanURL(url string) ([]*ScanResult, error) {
	headers := map[string]string{
		"tkn":          w.clientID,
		"Content-Type": "application/json",
	}

	stringBody, err := w.httpGetter.GetBatch(fmt.Sprintf("%s?url=%s", w.url, url), http.MethodGet, "", headers, nil)
	if err != nil {
		return nil, err
	}

	respForUrl := WebFilterResponse{}

	err = json.Unmarshal(stringBody, &respForUrl)
	if err != nil {
		return nil, err
	}

	return []*ScanResult{respForUrl.toScanResult()}, nil
}
