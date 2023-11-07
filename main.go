package main

import (
	"net/http"
	"os"
	"regexp"

	"github.com/amalfra/maildir/v3"
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
	smtpHandlers.Run()
}
