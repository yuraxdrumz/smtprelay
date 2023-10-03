package env

import (
	"os"

	"github.com/joho/godotenv"
	"github.com/kelseyhightower/envconfig"
)

var ENVVARS Specification

type Specification struct {
	LogLevel        string `envconfig:"LOG_LEVEL"`
	ENV             string `envconfig:"ENV"`
	Addr            string `envconfig:"ADDRDD"`
	ScannerURL      string `envconfig:"SCANNER_URL"`
	ScannerClientID string `envconfig:"SCANNER_CLIENT_ID"`
}

// New reads env vars to a struct
func New() (*Specification, error) {
	_, err := os.Stat(".env")
	if err == nil {
		err := godotenv.Load()
		if err != nil {
			return nil, err
		}
	}

	err = envconfig.Process("", &ENVVARS)
	if err != nil {
		return nil, err
	}

	return &ENVVARS, nil
}
