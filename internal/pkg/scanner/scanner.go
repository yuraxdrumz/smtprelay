package scanner

type Scanner interface {
	ScanURL(url string) ([]*ScanResult, error)
}

type ScanResult struct {
	StatusCode    int  `json:"status_code"`
	DomainGrey    bool `json:"domain_grey"`
	StatusMessage []string
}
