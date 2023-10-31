package filescanner

import (
	"encoding/json"
	"fmt"

	filescannertypes "github.com/decke/smtprelay/internal/pkg/file_scanner/types"
	"github.com/decke/smtprelay/internal/pkg/httpgetter"
	"github.com/sirupsen/logrus"
)

type api struct {
	httpGetter     *httpgetter.HTTPGetter
	fileScannerURL string
}

func NewAPIFileScanner(httpGetter *httpgetter.HTTPGetter, fileScannerURL string) *api {
	return &api{
		httpGetter:     httpGetter,
		fileScannerURL: fileScannerURL,
	}
}

func (a *api) ScanFileHash(fileName string, fileHash string) (*filescannertypes.Response, error) {
	logger := logrus.WithField("filename", fileName)
	resp, err := a.httpGetter.GetBatch(fmt.Sprintf("%s/scan/%s", a.fileScannerURL, fileHash), "GET", "", nil, nil)
	if err != nil {
		return nil, err
	}

	var shaResponse filescannertypes.ShaResponse
	err = json.Unmarshal(resp, &shaResponse)
	if err != nil {
		return nil, err
	}

	logger.Debugf("received response from scan file hash, resp=%+v", shaResponse)
	return &filescannertypes.Response{Status: shaResponse.Verdict}, nil
}
func (a *api) ScanFile(fileName string, file []byte) (*filescannertypes.Response, error) {
	logger := logrus.WithField("filename", fileName)
	resp, err := a.httpGetter.PostFile(fmt.Sprintf("%s/scan/file", a.fileScannerURL), file, fileName)
	if err != nil {
		return nil, err
	}

	var scanFileResponse *filescannertypes.Response
	err = json.Unmarshal(resp, &scanFileResponse)
	if err != nil {
		return nil, err
	}

	logger.Debugf("received response from scan file, resp=%+v", scanFileResponse)
	return scanFileResponse, nil
}
