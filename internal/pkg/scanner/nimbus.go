package scanner

import (
	"encoding/json"
	"net/http"

	"github.com/decke/smtprelay/internal/pkg/httpgetter"

	"github.com/sirupsen/logrus"
)

type nimbus struct {
	httpGetter     *httpgetter.HTTPGetter
	nimbusURL      string
	nimbusClientID string
}

type StatusMessageSingle struct {
	StatusMessage string `json:"status_message"`
}

type StatusMessageMulti struct {
	StatusMessage []string `json:"status_message"`
}

type ScanRequest struct {
	URL string `json:"url"`
}

func NewNimbusScanner(httpGetter *httpgetter.HTTPGetter, nimbusURL string, nimbusClientID string) Scanner {
	return &nimbus{
		httpGetter:     httpGetter,
		nimbusURL:      nimbusURL,
		nimbusClientID: nimbusClientID,
	}
}

func (n *nimbus) ScanURL(url string) ([]*ScanResult, error) {
	reqBody := []ScanRequest{
		{
			URL: url,
		},
	}
	marshalled, err := json.Marshal(reqBody)
	if err != nil {
		return nil, err
	}

	headers := map[string]string{
		"X-Nimbus-ClientId": n.nimbusClientID,
		"Content-Type":      "application/json",
	}

	stringBody, err := n.httpGetter.GetBatch(n.nimbusURL, http.MethodPost, string(marshalled), headers, nil)
	if err != nil {
		return nil, err
	}

	respForUrl := []*ScanResult{}

	err = json.Unmarshal(stringBody, &respForUrl)
	if err != nil {
		return nil, err
	}

	statusSingle := []StatusMessageSingle{}
	err = json.Unmarshal(stringBody, &statusSingle)
	respForUrl[0].StatusMessage = []string{statusSingle[0].StatusMessage}
	if err != nil {
		logrus.Debugf("failed getting single status message, trying multi, err=%s", err)
		statusMulti := []StatusMessageMulti{}
		err = json.Unmarshal(stringBody, &statusMulti)
		if err != nil {
			return nil, err
		}
		respForUrl[0].StatusMessage = statusMulti[0].StatusMessage
	}

	return respForUrl, nil
}
