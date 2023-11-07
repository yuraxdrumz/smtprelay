package main

import (
	"crypto/tls"
	"net"
	"net/http"
	"os"
	"os/signal"
	"regexp"
	"syscall"

	"github.com/amalfra/maildir/v3"
	"github.com/chrj/smtpd"
	"github.com/decke/smtprelay/internal/app/sendmail"
	"github.com/decke/smtprelay/internal/app/smtp"
	"github.com/decke/smtprelay/internal/pkg/encoder"
	"github.com/decke/smtprelay/internal/pkg/env"
	filescanner "github.com/decke/smtprelay/internal/pkg/file_scanner"
	"github.com/decke/smtprelay/internal/pkg/httpgetter"
	"github.com/decke/smtprelay/internal/pkg/metrics"
	saveemail "github.com/decke/smtprelay/internal/pkg/save_email"
	"github.com/decke/smtprelay/internal/pkg/scanner"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/sirupsen/logrus"
)

var (
	appVersion = "unknown"
	buildTime  = "unknown"
)

func init() {
	e, err := env.New()
	if err != nil {
		logrus.Fatal(err)
	}
	logrus.SetFormatter(&logrus.JSONFormatter{})
	logrus.SetOutput(os.Stdout)
	switch e.LogLevel {
	case "info":
		logrus.SetLevel(logrus.InfoLevel)
	case "debug":
		logrus.SetLevel(logrus.DebugLevel)
	case "error":
		logrus.SetLevel(logrus.ErrorLevel)
	case "warn":
		logrus.SetLevel(logrus.WarnLevel)
	case "fatal":
		logrus.SetLevel(logrus.FatalLevel)
	}
}

func main() {
	logrus.WithField("version", appVersion).Debug("starting smtprelay")
	metrics := metrics.NewPrometheusMetrics(prometheus.DefaultRegisterer)
	httpGetter := httpgetter.NewHTTPGetter(&http.Client{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer(env.ENVVARS.CynetProtectionURL, aes256Encoder)
	htmlUrlReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	scanner := scanner.NewWebFilter(httpGetter, env.ENVVARS.ScannerURL, env.ENVVARS.ScannerClientID)
	fileScanner := filescanner.NewAPIFileScanner(httpGetter, env.ENVVARS.FileScannerURL)
	md := maildir.NewMaildir(env.ENVVARS.MailDir)
	saveEmail := saveemail.NewMailDir(md)
	sendMail := sendmail.NewSendMail(metrics, urlReplacer, htmlUrlReplacer, scanner, fileScanner, saveEmail, env.ENVVARS.CynetActionHeader)
	smtpHandlers := smtp.NewSMTPHandlers(metrics, env.ENVVARS.AllowedNets, (*regexp.Regexp)(&env.ENVVARS.AllowedSender), (*regexp.Regexp)(&env.ENVVARS.AllowedRecipients), env.ENVVARS.CynetTenantHeader, sendMail)

	var servers []*smtpd.Server
	// Create a server for each desired listen address
	for _, listen := range env.ENVVARS.ListenStr {
		logger := logrus.WithField("address", listen.Address)

		server := &smtpd.Server{
			Hostname:          env.ENVVARS.HostName,
			WelcomeMessage:    env.ENVVARS.WelcomeMSG,
			ReadTimeout:       env.ENVVARS.ReadTimeout,
			WriteTimeout:      env.ENVVARS.WriteTimeout,
			DataTimeout:       env.ENVVARS.DataTimeout,
			MaxConnections:    env.ENVVARS.MaxConnections,
			MaxMessageSize:    env.ENVVARS.MaxMessageSize,
			MaxRecipients:     env.ENVVARS.MaxRecipients,
			ConnectionChecker: smtpHandlers.ConnectionChecker,
			SenderChecker:     smtpHandlers.SenderChecker,
			RecipientChecker:  smtpHandlers.RecipientChecker,
			Handler:           smtpHandlers.MailHandler,
		}

		var lsnr net.Listener
		var err error

		switch listen.Protocol {
		case "":
			logger.Info("listening on address")
			lsnr, err = net.Listen("tcp4", listen.Address)

		case "starttls":
			server.TLSConfig = GetTLSConfig(env.ENVVARS.LocalCert, env.ENVVARS.LocalKey)
			server.ForceTLS = env.ENVVARS.LocalForceTLS

			logger.Info("listening on address (STARTTLS)")
			lsnr, err = net.Listen("tcp4", listen.Address)

		case "tls":
			server.TLSConfig = GetTLSConfig(env.ENVVARS.LocalCert, env.ENVVARS.LocalKey)

			logger.Info("listening on address (TLS)")
			lsnr, err = tls.Listen("tcp4", listen.Address, server.TLSConfig)

		default:
			logger.WithField("protocol", listen.Protocol).
				Fatal("unknown protocol in listen address")
		}

		if err != nil {
			logger.WithError(err).Fatal("error starting listener")
		}
		servers = append(servers, server)

		go func() {
			server.Serve(lsnr)
		}()
	}

	HandleSignals()

	// First close the listeners
	for _, server := range servers {
		logger := logrus.WithField("address", server.Address())
		logger.Debug("Shutting down server")
		err := server.Shutdown(false)
		if err != nil {
			logger.WithError(err).
				Warning("Shutdown failed")
		}
	}

	// Then wait for the clients to exit
	for _, server := range servers {
		logger := logrus.WithField("address", server.Address())
		logger.Debug("Waiting for server")
		err := server.Wait()
		if err != nil {
			logger.WithError(err).
				Warning("Wait failed")
		}
	}

	logrus.Debug("done")
}

func HandleSignals() {
	// Wait for SIGINT, SIGQUIT, or SIGTERM
	sigs := make(chan os.Signal, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGQUIT, syscall.SIGTERM)
	sig := <-sigs

	logrus.WithField("signal", sig).
		Info("shutting down in response to received signal")
}

func GetTLSConfig(localCert string, localKey string) *tls.Config {
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

	if localCert == "" || localKey == "" {
		logrus.WithFields(logrus.Fields{
			"cert_file": localCert,
			"key_file":  localKey,
		}).Fatal("TLS certificate/key file not defined in config")
	}

	cert, err := tls.LoadX509KeyPair(localCert, localKey)
	if err != nil {
		logrus.WithField("error", err).
			Fatal("cannot load X509 keypair")
	}

	return &tls.Config{
		PreferServerCipherSuites: true,
		MinVersion:               tls.VersionTLS12,
		CipherSuites:             tlsCipherSuites,
		Certificates:             []tls.Certificate{cert},
	}
}
