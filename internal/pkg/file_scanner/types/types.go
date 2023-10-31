package filescannertypes

type Status string

const (
	Clean     Status = "Clean"
	Malicious Status = "Malicious"
	Unknown   Status = "Unknown"
)

type Engine string

type ShaResponse struct {
	Verdict Status `json:"verdict"`
}

type FileResponse struct {
	Verdict Response `json:"verdict"`
}

type Response struct {
	FileName       string   `json:"file_name"`
	Status         Status   `json:"status"`
	EnginesChecked []Engine `json:"engines_checked"`
}
