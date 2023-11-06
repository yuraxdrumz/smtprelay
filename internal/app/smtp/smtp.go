package smtp

import (
	"fmt"
	"net"
	"net/textproto"
	"regexp"
	"strings"

	"github.com/chrj/smtpd"
	"github.com/decke/smtprelay/internal/app/sendmail"
	"github.com/decke/smtprelay/internal/pkg/client"
	"github.com/decke/smtprelay/internal/pkg/metrics"
	"github.com/decke/smtprelay/internal/pkg/remotes"
	"github.com/google/uuid"
	"github.com/sirupsen/logrus"
)

type SMTPHandlers struct {
	metrics           *metrics.Metrics
	allowedNets       []net.IPNet
	allowedSender     *regexp.Regexp
	allowedRecipients *regexp.Regexp
	cynetTenantHeader string
	sendMail          *sendmail.SendMail
}

func NewSMTPHandlers(metrics *metrics.Metrics, allowedNets []net.IPNet, allowedSender *regexp.Regexp, allowedRecipients *regexp.Regexp, cynetTenantHeader string, sendMail *sendmail.SendMail) *SMTPHandlers {
	return &SMTPHandlers{
		metrics:           metrics,
		allowedNets:       allowedNets,
		allowedSender:     allowedSender,
		allowedRecipients: allowedRecipients,
		cynetTenantHeader: cynetTenantHeader,
		sendMail:          sendMail,
	}
}

func (s *SMTPHandlers) ConnectionChecker(peer smtpd.Peer) error {
	// This can't panic because we only have TCP listeners
	peerIP := peer.Addr.(*net.TCPAddr).IP
	for _, allowedNet := range s.allowedNets {
		if allowedNet.Contains(peerIP) {
			return nil
		}
	}

	logrus.WithFields(logrus.Fields{
		"ip": peerIP,
	}).Warn("Connection refused from address outside of allowed_nets")
	return smtpd.Error{Code: 421, Message: "Denied"}
}

func addrAllowed(addr string, allowedAddrs []string) bool {
	if allowedAddrs == nil {
		// If absent, all addresses are allowed
		return true
	}

	addr = strings.ToLower(addr)

	// Extract optional domain part
	domain := ""
	if idx := strings.LastIndex(addr, "@"); idx != -1 {
		domain = strings.ToLower(addr[idx+1:])
	}

	// Test each address from allowedUsers file
	for _, allowedAddr := range allowedAddrs {
		allowedAddr = strings.ToLower(allowedAddr)

		// Three cases for allowedAddr format:
		if idx := strings.Index(allowedAddr, "@"); idx == -1 {
			// 1. local address (no @) -- must match exactly
			if allowedAddr == addr {
				return true
			}
		} else {
			if idx != 0 {
				// 2. email address (user@domain.com) -- must match exactly
				if allowedAddr == addr {
					return true
				}
			} else {
				// 3. domain (@domain.com) -- must match addr domain
				allowedDomain := allowedAddr[idx+1:]
				if allowedDomain == domain {
					return true
				}
			}
		}
	}

	return false
}

func (s *SMTPHandlers) SenderChecker(peer smtpd.Peer, addr string) error {
	if s.allowedSender == nil {
		// Any sender is permitted
		return nil
	}

	if s.allowedSender.MatchString(addr) {
		// Permitted by regex
		return nil
	}

	logrus.WithFields(logrus.Fields{
		"sender_address": addr,
		"peer":           peer.Addr,
	}).Warn("sender address not allowed by allowed_sender pattern")
	return smtpd.Error{Code: 451, Message: "Bad sender address"}
}

func (s *SMTPHandlers) RecipientChecker(peer smtpd.Peer, addr string) error {
	if s.allowedRecipients == nil {
		// Any recipient is permitted
		return nil
	}

	if s.allowedRecipients.MatchString(addr) {
		// Permitted by regex
		return nil
	}

	logrus.WithFields(logrus.Fields{
		"peer":              peer.Addr,
		"recipient_address": addr,
	}).Warn("recipient address not allowed by allowed_recipients pattern")
	return smtpd.Error{Code: 451, Message: "Bad recipient address"}
}

func (s *SMTPHandlers) MailHandler(peer smtpd.Peer, env smtpd.Envelope) error {
	peerIP := ""
	if addr, ok := peer.Addr.(*net.TCPAddr); ok {
		peerIP = addr.IP.String()
	}

	logger := logrus.WithFields(logrus.Fields{
		"from": env.Sender,
		"to":   env.Recipients,
		"peer": peerIP,
		"uuid": s.generateUUID(),
	})

	env.AddReceivedLine(peer)

	logger.Debug("taking first recipient email")
	firstRecipientEmail := env.Recipients[0]
	logger.Debugf("extracting domain from: %s", firstRecipientEmail)
	domain := strings.Split(firstRecipientEmail, "@")[1]
	logger.Debugf("searching MX records for domain: %s", domain)
	mxrecords, err := net.LookupMX(domain)
	if err != nil {
		return smtpd.Error{Code: 554, Message: fmt.Sprintf("lookup MX failed: %s", err.Error())}
	}

	for _, mx := range mxrecords {
		logger.Debugf("found MX record: %s, Pref=%d", mx.Host, mx.Pref)
	}
	firstMXRecord := mxrecords[0]
	remoteStr := fmt.Sprintf("smtp://%s", firstMXRecord.Host)
	logger.Debugf("using first MX record: %s, Pref=%d to forward mail", firstMXRecord.Host, firstMXRecord.Pref)
	remote, err := remotes.ParseRemote(remoteStr)
	if err != nil {
		return smtpd.Error{Code: 554, Message: fmt.Sprintf("parsing remote failed: %s", err.Error())}
	}

	cynetID := ""
	cynetTenantIDHeaderRegex := regexp.MustCompile(fmt.Sprintf(`.*%s: (.*)`, s.cynetTenantHeader))
	cynetIDMatchList := cynetTenantIDHeaderRegex.FindAllStringSubmatch(string(env.Data), 1)
	if len(cynetIDMatchList) > 0 {
		matchGroup := cynetIDMatchList[0]
		if len(matchGroup) == 2 {
			// usually matches look like ["x-cynet-tenant-token: ea0859f9-f30a-4a54-beaf-669eb9eff12e", "ea0859f9-f30a-4a54-beaf-669eb9eff12e"]
			cynetID = matchGroup[1]
		}
	}

	logger.WithField(s.cynetTenantHeader, cynetID).Debug("extracted cynet tenant header")
	// for _, remote := range envRemotes {
	logger = logger.WithField("host", remote.Addr)
	client, err := client.NewRemoteClientConnection(remote)
	if err != nil {
		return smtpd.Error{Code: 554, Message: fmt.Sprintf("creating client failed: %s", err.Error())}
	}

	err = s.sendMail.SendMail(
		remote,
		client,
		env.Sender,
		env.Recipients,
		env.Data,
	)
	if err != nil {
		var smtpError smtpd.Error

		switch err := err.(type) {
		case *textproto.Error:
			smtpError = smtpd.Error{Code: err.Code, Message: err.Msg}

			logger.WithFields(logrus.Fields{
				"err_code": err.Code,
				"err_msg":  err.Msg,
			}).Error("delivery failed")
		default:
			smtpError = smtpd.Error{Code: 554, Message: "Forwarding failed"}

			logger.WithError(err).
				Error("delivery failed")
		}

		return smtpError
	}

	logger.Debug("delivery successful")

	return nil
}

func (s *SMTPHandlers) generateUUID() string {
	uniqueID, err := uuid.NewRandom()

	if err != nil {
		logrus.WithError(err).
			Error("could not generate UUIDv4")

		return ""
	}

	return uniqueID.String()
}
