package filescanner

type Scanner interface {
	ScanFileHash(fileHash string) (*ScanResult, error)
	ScanFile(file []byte) (*ScanResult, error)
}

type ScanResult struct {
	Status Status
}

type Status string

const (
	Malicious Status = "malicious"
	Unknown   Status = "unknown"
	Clean     Status = "clean"
)
