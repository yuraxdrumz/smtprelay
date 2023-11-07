package env

import (
	"errors"
	"fmt"
	"net"
	"os"
	"regexp"
	"strings"
	"time"

	"github.com/decke/smtprelay/internal/pkg/remotes"
	"github.com/decke/smtprelay/internal/pkg/utils"
	"github.com/joho/godotenv"
	"github.com/kelseyhightower/envconfig"
	"github.com/sirupsen/logrus"
)

var ENVVARS Specification

type Specification struct {
	LogLevel           string            `envconfig:"LOG_LEVEL"`
	ENV                string            `envconfig:"ENV"`
	ListenStr          Listeners         `envconfig:"LISTEN"`
	ScannerURL         string            `envconfig:"SCANNER_URL"`
	ScannerClientID    string            `envconfig:"SCANNER_CLIENT_ID"`
	HostName           string            `envconfig:"HOSTNAME"`
	WelcomeMSG         string            `enconfig:"WELCOME_MSG"`
	LocalCert          string            `envconfig:"LOCAL_CERT"`
	LocalKey           string            `envconfig:"LOCAL_KEY"`
	LocalForceTLS      bool              `envconfig:"LOCAL_FORCE_TLS"`
	ReadTimeout        time.Duration     `envconfig:"READ_TIMEOUT" default:"60s"`
	WriteTimeout       time.Duration     `envconfig:"WRITE_TIMEOUT" default:"60s"`
	DataTimeout        time.Duration     `envconfig:"DATA_TIMEOUT" default:"60s"`
	MaxConnections     int               `envconfig:"MAX_CONNECTIONS" default:"100"`
	MaxMessageSize     int               `envconfig:"MAX_MESSAGE_SIZE" default:"10240000"`
	MaxRecipients      int               `envconfig:"MAX_RECIPIENTS" default:"100"`
	AllowedNets        AllowedNets       `envconfig:"ALLOWED_NETS"`
	AllowedSender      AllowedSender     `envconfig:"ALLOWED_SENDER"`
	AllowedRecipients  AllowedRecipients `envconfig:"ALLOWED_RECIPIENTS"`
	AllowedRemotes     Remotes           `envconfig:"ALLOWED_REMOTES"`
	MailDir            string            `envconfig:"MAIL_DIR"`
	CynetTenantHeader  string            `envconfig:"CYNET_TENANT_HEADER"`
	CynetActionHeader  string            `envconfig:"CYNET_ACTION_HEADER"`
	CynetProtectionURL string            `envconfig:"CYNET_PROTECTION_URL"`
	FileScannerURL     string            `envconfig:"FILE_SCANNER_URL"`
}

type AllowedNets []net.IPNet

func (a *AllowedNets) Decode(value string) error {
	allowedNets := []net.IPNet{}
	for _, netstr := range utils.Splitstr(value, ' ') {
		baseIP, allowedNet, err := net.ParseCIDR(netstr)
		if err != nil {
			logrus.WithField("netstr", netstr).
				WithError(err).
				Fatal("Invalid CIDR notation in allowed_nets")
			return err
		}

		// Reject any network specification where any host bits are set,
		// meaning the address refers to a host and not a network.
		if !allowedNet.IP.Equal(baseIP) {
			logrus.WithFields(logrus.Fields{
				"given_net":  netstr,
				"proper_net": allowedNet,
			}).Fatal("Invalid network in allowed_nets (host bits set)")
			return errors.New("Invalid network in allowed_nets (host bits set)")
		}

		allowedNets = append(allowedNets, *allowedNet)
	}

	*a = allowedNets
	return nil
}

type AllowedSender regexp.Regexp

func (a *AllowedSender) Decode(value string) error {
	if value != "" {
		allowedSender, err := regexp.Compile(value)
		if err != nil {
			logrus.WithField("allowed_sender", value).
				WithError(err).
				Fatal("allowed_sender pattern invalid")
			return err
		}

		*a = AllowedSender(*allowedSender)
	}

	return nil
}

type AllowedRecipients regexp.Regexp

func (a *AllowedRecipients) Decode(value string) error {
	if value != "" {
		allowedRecipients, err := regexp.Compile(value)
		if err != nil {
			logrus.WithField("allowed_recipients", value).
				WithError(err).
				Fatal("allowed_recipients pattern invalid")
			return err
		}

		*a = AllowedRecipients(*allowedRecipients)
	}

	return nil
}

type Remotes []*remotes.Remote

func (re *Remotes) Decode(value string) error {
	logger := logrus.WithField("remotes", value)
	remotesSlice := []*remotes.Remote{}
	if value != "" {
		for _, remoteURL := range strings.Split(value, " ") {
			r, err := remotes.ParseRemote(remoteURL)
			if err != nil {
				logger.Fatal(fmt.Sprintf("error parsing url: '%s': %v", remoteURL, err))
				return err
			}
			remotesSlice = append(remotesSlice, r)
		}
		*re = remotesSlice
	}

	return nil
}

type Listeners []utils.ProtoAddr

func (l *Listeners) Decode(value string) error {
	listenAddrs := []utils.ProtoAddr{}
	for _, listenAddr := range strings.Split(value, " ") {
		pa := utils.SplitProto(listenAddr)
		listenAddrs = append(listenAddrs, pa)
	}

	*l = listenAddrs

	return nil
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
