package filescanner

type NoOP struct{}

func NewNoOPFileScanner() *NoOP {
	return &NoOP{}
}

func (n *NoOP) ScanFileHash(fileHash string) (*ScanResult, error) {
	return &ScanResult{Status: Clean}, nil
}
func (n *NoOP) ScanFile(file []byte) (*ScanResult, error) {
	return &ScanResult{Status: Clean}, nil
}
