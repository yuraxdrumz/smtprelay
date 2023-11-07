// Code generated by MockGen. DO NOT EDIT.
// Source: ./internal/pkg/file_scanner/file_scanner.go

// Package filescanner is a generated GoMock package.
package filescanner

import (
	reflect "reflect"

	filescannertypes "github.com/decke/smtprelay/internal/pkg/file_scanner/types"
	gomock "github.com/golang/mock/gomock"
)

// MockScanner is a mock of Scanner interface.
type MockScanner struct {
	ctrl     *gomock.Controller
	recorder *MockScannerMockRecorder
}

// MockScannerMockRecorder is the mock recorder for MockScanner.
type MockScannerMockRecorder struct {
	mock *MockScanner
}

// NewMockScanner creates a new mock instance.
func NewMockScanner(ctrl *gomock.Controller) *MockScanner {
	mock := &MockScanner{ctrl: ctrl}
	mock.recorder = &MockScannerMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use.
func (m *MockScanner) EXPECT() *MockScannerMockRecorder {
	return m.recorder
}

// ScanFile mocks base method.
func (m *MockScanner) ScanFile(fileName string, file []byte) (*filescannertypes.Response, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "ScanFile", fileName, file)
	ret0, _ := ret[0].(*filescannertypes.Response)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// ScanFile indicates an expected call of ScanFile.
func (mr *MockScannerMockRecorder) ScanFile(fileName, file interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "ScanFile", reflect.TypeOf((*MockScanner)(nil).ScanFile), fileName, file)
}

// ScanFileHash mocks base method.
func (m *MockScanner) ScanFileHash(fileName, fileHash string) (*filescannertypes.Response, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "ScanFileHash", fileName, fileHash)
	ret0, _ := ret[0].(*filescannertypes.Response)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// ScanFileHash indicates an expected call of ScanFileHash.
func (mr *MockScannerMockRecorder) ScanFileHash(fileName, fileHash interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "ScanFileHash", reflect.TypeOf((*MockScanner)(nil).ScanFileHash), fileName, fileHash)
}
