package config

import (
	"bufio"
	"crypto/tls"
	"flag"
	"fmt"
	"io"
	"net"
	"os"
	"regexp"
	"strings"
	"time"

	remotesApp "github.com/decke/smtprelay/internal/app/remotes"
	"github.com/decke/smtprelay/internal/pkg/utils"
	"github.com/peterbourgon/ff/v3"
	"github.com/sirupsen/logrus"
)

var (
	flagset = flag.NewFlagSet("smtprelay", flag.ContinueOnError)

	// config flags
	LogFile            = flagset.String("logfile", "", "Path to logfile")
	LogFormat          = flagset.String("log_format", "default", "Log output format")
	LogLevel           = flagset.String("log_level", "info", "Minimum log level to output")
	HostName           = flagset.String("hostname", "localhost.localdomain", "Server hostname")
	WelcomeMsg         = flagset.String("welcome_msg", "", "Welcome message for SMTP session")
	ListenStr          = flagset.String("listen", "127.0.0.1:2525 [::1]:2525", "Address and port to listen for incoming SMTP")
	LocalCert          = flagset.String("local_cert", "", "SSL certificate for STARTTLS/TLS")
	LocalKey           = flagset.String("local_key", "", "SSL private key for STARTTLS/TLS")
	LocalForceTLS      = flagset.Bool("local_forcetls", false, "Force STARTTLS (needs local_cert and local_key)")
	ReadTimeoutStr     = flagset.String("read_timeout", "60s", "Socket timeout for read operations")
	WriteTimeoutStr    = flagset.String("write_timeout", "60s", "Socket timeout for write operations")
	DataTimeoutStr     = flagset.String("data_timeout", "5m", "Socket timeout for DATA command")
	MaxConnections     = flagset.Int("max_connections", 100, "Max concurrent connections, use -1 to disable")
	MaxMessageSize     = flagset.Int("max_message_size", 10240000, "Max message size in bytes")
	MaxRecipients      = flagset.Int("max_recipients", 100, "Max RCPT TO calls for each envelope")
	AllowedNetsStr     = flagset.String("allowed_nets", "", "Networks allowed to send mails")
	AllowedSenderStr   = flagset.String("allowed_sender", "", "Regular expression for valid FROM EMail addresses")
	AllowedRecipStr    = flagset.String("allowed_recipients", "", "Regular expression for valid TO EMail addresses")
	AllowedUsers       = flagset.String("allowed_users", "", "Path to file with valid users/passwords")
	Command            = flagset.String("command", "", "Path to pipe command")
	RemotesStr         = flagset.String("remotes", "", "Outgoing SMTP servers")
	ScannerUrl         = flagset.String("scanner_url", "", "scanner url for checking links")
	ScannerClientID    = flagset.String("scanner_client_id", "", "auth for scanner url")
	MailDir            = flagset.String("mail_dir", "", "mail dir for storing email messages")
	CynetTenantHeader  = flagset.String("cynet_tenant_header", "", "header to check tenant id")
	CynetActionHeader  = flagset.String("cynet_action_header", "", "header to inject when malicious email found")
	CynetProtectionUrl = flagset.String("cynet_protection_url", "", "url to inject when replacing links")
	FileScannerUrl     = flagset.String("file_scanner_url", "", "url to send files for checks")
	// additional flags
	_           = flagset.String("config", "", "Path to config file (ini format)")
	VersionInfo = flagset.Bool("version", false, "Show version information")
)

func GetTLSConfig() *tls.Config {
	// Ciphersuites as defined in stock Go but without 3DES and RC4
	// https://golang.org/src/crypto/tls/cipher_suites.go
	var tlsCipherSuites = []uint16{
		tls.TLS_AES_128_GCM_SHA256,
		tls.TLS_AES_256_GCM_SHA384,
		tls.TLS_CHACHA20_POLY1305_SHA256,
		tls.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256,
		tls.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256,
		tls.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,
		tls.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,
		tls.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,
		tls.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,
		tls.TLS_RSA_WITH_AES_128_GCM_SHA256, // does not provide PFS
		tls.TLS_RSA_WITH_AES_256_GCM_SHA384, // does not provide PFS
	}

	if *LocalCert == "" || *LocalKey == "" {
		log.WithFields(logrus.Fields{
			"cert_file": *LocalCert,
			"key_file":  *LocalKey,
		}).Fatal("TLS certificate/key file not defined in config")
	}

	cert, err := tls.LoadX509KeyPair(*LocalCert, *LocalKey)
	if err != nil {
		log.WithField("error", err).
			Fatal("cannot load X509 keypair")
	}

	return &tls.Config{
		PreferServerCipherSuites: true,
		MinVersion:               tls.VersionTLS12,
		CipherSuites:             tlsCipherSuites,
		Certificates:             []tls.Certificate{cert},
	}
}

func SetupAllowedNetworks() []*net.IPNet {
	allowedNets := []*net.IPNet{}
	for _, netstr := range utils.Splitstr(*AllowedNetsStr, ' ') {
		baseIP, allowedNet, err := net.ParseCIDR(netstr)
		if err != nil {
			logrus.WithField("netstr", netstr).
				WithError(err).
				Fatal("Invalid CIDR notation in allowed_nets")
		}

		// Reject any network specification where any host bits are set,
		// meaning the address refers to a host and not a network.
		if !allowedNet.IP.Equal(baseIP) {
			logrus.WithFields(logrus.Fields{
				"given_net":  netstr,
				"proper_net": allowedNet,
			}).Fatal("Invalid network in allowed_nets (host bits set)")
		}

		allowedNets = append(allowedNets, allowedNet)
	}

	return allowedNets
}

func SetupAllowedSender() *regexp.Regexp {
	if *AllowedSenderStr != "" {
		allowedSender, err := regexp.Compile(*AllowedSenderStr)
		if err != nil {
			logrus.WithField("allowed_sender", *AllowedSenderStr).
				WithError(err).
				Fatal("allowed_sender pattern invalid")
		}

		return allowedSender
	}

	return nil
}

func SetupAllowedRecipients() *regexp.Regexp {
	if *AllowedRecipStr != "" {
		allowedRecipients, err := regexp.Compile(*AllowedRecipStr)
		if err != nil {
			logrus.WithField("allowed_recipients", *AllowedRecipStr).
				WithError(err).
				Fatal("allowed_recipients pattern invalid")
		}

		return allowedRecipients
	}

	return nil
}

func SetupRemotes() []*remotesApp.Remote {
	logger := logrus.WithField("remotes", *RemotesStr)
	remotes := []*remotesApp.Remote{}
	if *RemotesStr != "" {
		for _, remoteURL := range strings.Split(*RemotesStr, " ") {
			r, err := remotesApp.ParseRemote(remoteURL)
			if err != nil {
				logger.Fatal(fmt.Sprintf("error parsing url: '%s': %v", remoteURL, err))
			}

			remotes = append(remotes, r)
		}
	}

	return remotes
}

func SetupListeners() []utils.ProtoAddr {
	listenAddrs := []utils.ProtoAddr{}
	for _, listenAddr := range strings.Split(*ListenStr, " ") {
		pa := utils.SplitProto(listenAddr)
		listenAddrs = append(listenAddrs, pa)
	}

	return listenAddrs
}

func SetupTimeouts() (time.Duration, time.Duration, time.Duration) {
	var err error

	readTimeout, err := time.ParseDuration(*ReadTimeoutStr)
	if err != nil {
		logrus.WithField("read_timeout", *ReadTimeoutStr).
			WithError(err).
			Fatal("read_timeout duration string invalid")
	}
	if readTimeout.Seconds() < 1 {
		logrus.WithField("read_timeout", *ReadTimeoutStr).
			Fatal("read_timeout less than one second")
	}

	writeTimeout, err := time.ParseDuration(*WriteTimeoutStr)
	if err != nil {
		logrus.WithField("write_timeout", *WriteTimeoutStr).
			WithError(err).
			Fatal("write_timeout duration string invalid")
	}
	if writeTimeout.Seconds() < 1 {
		logrus.WithField("write_timeout", *WriteTimeoutStr).
			Fatal("write_timeout less than one second")
	}

	dataTimeout, err := time.ParseDuration(*DataTimeoutStr)
	if err != nil {
		logrus.WithField("data_timeout", *DataTimeoutStr).
			WithError(err).
			Fatal("data_timeout duration string invalid")
	}
	if dataTimeout.Seconds() < 1 {
		logrus.WithField("data_timeout", *DataTimeoutStr).
			Fatal("data_timeout less than one second")
	}

	return readTimeout, writeTimeout, dataTimeout
}

func ConfigLoad() ([]*net.IPNet, *regexp.Regexp, *regexp.Regexp, time.Duration, time.Duration, time.Duration, []*remotesApp.Remote, []utils.ProtoAddr) {
	// use .env file if it exists
	if _, err := os.Stat(".env"); err == nil {
		if err := ff.Parse(flagset, os.Args[1:],
			ff.WithEnvVarPrefix(""),
			ff.WithConfigFile(".env"),
			ff.WithConfigFileParser(ff.EnvParser),
		); err != nil {
			fmt.Fprintf(os.Stderr, "error: %v\n", err)
			os.Exit(1)
		}
	} else {
		// use env variables and smtprelay.ini file
		if err := ff.Parse(flagset, os.Args[1:],
			ff.WithEnvVarPrefix(""),
			ff.WithConfigFileFlag("config"),
			ff.WithConfigFileParser(IniParser),
		); err != nil {
			fmt.Fprintf(os.Stderr, "error: %v\n", err)
			os.Exit(1)
		}
	}

	SetupLogger()
	allowedNets := SetupAllowedNetworks()
	allowedSenderRegexp := SetupAllowedSender()
	allowedRecipientsRegexp := SetupAllowedRecipients()
	remotes := SetupRemotes()
	listenAddrs := SetupListeners()
	readTimeout, writeTimeout, dataTimeout := SetupTimeouts()
	return allowedNets, allowedSenderRegexp, allowedRecipientsRegexp, readTimeout, writeTimeout, dataTimeout, remotes, listenAddrs
}

// IniParser is a parser for config files in classic key/value style format. Each
// line is tokenized as a single key/value pair. The first "=" delimited
// token in the line is interpreted as the flag name, and all remaining tokens
// are interpreted as the value. Any leading hyphens on the flag name are
// ignored.
func IniParser(r io.Reader, set func(name, value string) error) error {
	s := bufio.NewScanner(r)
	for s.Scan() {
		line := strings.TrimSpace(s.Text())
		if line == "" {
			continue // skip empties
		}

		if line[0] == '#' || line[0] == ';' {
			continue // skip comments
		}

		var (
			name  string
			value string
			index = strings.IndexRune(line, '=')
		)
		if index < 0 {
			name, value = line, "true" // boolean option
		} else {
			name, value = strings.TrimSpace(line[:index]), strings.Trim(strings.TrimSpace(line[index+1:]), "\"")
		}

		if i := strings.Index(value, " #"); i >= 0 {
			value = strings.TrimSpace(value[:i])
		}

		if err := set(name, value); err != nil {
			return err
		}
	}
	return nil
}
