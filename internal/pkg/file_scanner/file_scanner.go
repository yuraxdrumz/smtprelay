package filescanner

import filescannertypes "github.com/decke/smtprelay/internal/pkg/file_scanner/types"

type Scanner interface {
	ScanFileHash(fileName string, fileHash string) (*filescannertypes.Response, error)
	ScanFile(fileName string, file []byte) (*filescannertypes.Response, error)
}
