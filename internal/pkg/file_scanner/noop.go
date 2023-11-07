package filescanner

import filescannertypes "github.com/decke/smtprelay/internal/pkg/file_scanner/types"

type NoOP struct{}

func NewNoOPFileScanner() *NoOP {
	return &NoOP{}
}

func (n *NoOP) ScanFileHash(fileName string, fileHash string) (*filescannertypes.Response, error) {
	return &filescannertypes.Response{Status: filescannertypes.Clean}, nil
}
func (n *NoOP) ScanFile(fileName string, file []byte) (*filescannertypes.Response, error) {
	return &filescannertypes.Response{Status: filescannertypes.Clean}, nil
}
