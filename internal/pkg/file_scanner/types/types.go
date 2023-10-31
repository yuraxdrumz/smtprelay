package filescannertypes

type Status string

const (
	Clean     Status = "clean"
	Malicious Status = "malicious"
	Unknown   Status = "unknown"
)

type Engine string

const (
	Avira Engine = "avira"
)

type ShaResponse struct {
	Verdict Status `json:"verdict"`
}

type Response struct {
	FileName       string   `json:"file_name"`
	Status         Status   `json:"status"`
	EnginesChecked []Engine `json:"engines_checked"`
}
