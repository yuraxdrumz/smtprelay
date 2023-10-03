package httpgetter

import (
	"bytes"
	"fmt"
	"io"
	"net/http"
	"net/url"

	"github.com/sirupsen/logrus"
)

type HTTPGetter struct {
	HTTP *http.Client
}

func NewHTTPGetter(httpClient *http.Client) *HTTPGetter {
	return &HTTPGetter{
		HTTP: httpClient,
	}
}

func (h *HTTPGetter) GetBatch(URL string, method string, requestBody string, headers map[string]string, additionalQueryParams map[string]string) ([]byte, error) {
	url, err := url.Parse(URL)
	if err != nil {
		return nil, err
	}

	query := url.Query()
	for k, v := range additionalQueryParams {
		query.Set(k, v)
	}
	url.RawQuery = query.Encode()

	req, err := http.NewRequest(method, url.String(), bytes.NewReader([]byte(requestBody)))
	if err != nil {
		return nil, err
	}

	for k, v := range headers {
		req.Header.Set(k, v)
	}

	logrus.WithFields(logrus.Fields{
		"url":     url.String(),
		"body":    requestBody,
		"headers": req.Header.Clone(),
	}).Debug("sending request")

	res, err := h.HTTP.Do(req)
	if err != nil {
		return nil, err
	}

	logrus.Debugf("received status %s", res.Status)

	if res.Status != "200 OK" {
		return nil, fmt.Errorf("received a non 200 error, status=%s", res.Status)
	}

	body, err := io.ReadAll(res.Body)
	if err != nil {
		return nil, err
	}

	return body, nil
}
