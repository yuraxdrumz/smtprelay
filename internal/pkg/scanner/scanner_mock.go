// Code generated by MockGen. DO NOT EDIT.
// Source: ./internal/pkg/scanner/scanner.go

// Package scanner is a generated GoMock package.
package scanner

import (
	reflect "reflect"

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

// ScanURL mocks base method.
func (m *MockScanner) ScanURL(url string) ([]*ScanResult, error) {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "ScanURL", url)
	ret0, _ := ret[0].([]*ScanResult)
	ret1, _ := ret[1].(error)
	return ret0, ret1
}

// ScanURL indicates an expected call of ScanURL.
func (mr *MockScannerMockRecorder) ScanURL(url interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "ScanURL", reflect.TypeOf((*MockScanner)(nil).ScanURL), url)
}
