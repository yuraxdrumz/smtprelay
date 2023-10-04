// Copyright 2010 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package smtp implements the Simple Mail Transfer Protocol as defined in RFC 5321.
// It also implements the following extensions:
//
//	8BITMIME  RFC 1652
//	AUTH      RFC 2554
//	STARTTLS  RFC 3207
//
// Additional extensions may be handled by clients.
//
// The smtp package is frozen and is not accepting new features.
// Some external packages provide more functionality. See:
//
//	https://godoc.org/?q=smtp
package smtp

import (
	"bufio"
	"bytes"
	"crypto/tls"
	"encoding/base64"
	"errors"
	"fmt"
	"io"
	"net"
	"net/smtp"
	"net/textproto"
	"strings"
	"time"

	"github.com/amalfra/maildir/v3"
	"github.com/decke/smtprelay/internal/app/processors"
	"github.com/decke/smtprelay/internal/app/processors/bodyprocessors"
	"github.com/decke/smtprelay/internal/pkg/metrics"
	"github.com/decke/smtprelay/internal/pkg/scanner"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/sirupsen/logrus"
)

// A Client represents a client connection to an SMTP server.
type Client struct {
	// Text is the textproto.Conn used by the Client. It is exported to allow for
	// clients to add extensions.
	Text *textproto.Conn
	// keep a reference to the connection so it can be used to create a TLS
	// connection later
	conn net.Conn
	// whether the Client is using TLS
	tls        bool
	serverName string
	// map of supported extensions
	ext map[string]string
	// supported auth mechanisms
	auth       []string
	localName  string // the name to use in HELO/EHLO
	didHello   bool   // whether we've said HELO/EHLO
	helloError error  // the error from the hello
	tmpBuffer  *bytes.Buffer
}

// Dial returns a new Client connected to an SMTP server at addr.
// The addr must include a port, as in "mail.example.com:smtp".
func Dial(addr string, timeout time.Duration) (*Client, error) {
	conn, err := net.DialTimeout("tcp", addr, timeout)
	if err != nil {
		return nil, err
	}
	host, _, _ := net.SplitHostPort(addr)
	return NewClient(conn, host)
}

// NewClient returns a new Client using an existing connection and host as a
// server name to be used when authenticating.
func NewClient(conn net.Conn, host string) (*Client, error) {
	text := textproto.NewConn(conn)
	_, _, err := text.ReadResponse(220)
	if err != nil {
		text.Close()
		return nil, err
	}
	c := &Client{
		Text:       text,
		conn:       conn,
		serverName: host,
		localName:  *hostName,
		tmpBuffer:  bytes.NewBuffer([]byte{}),
	}
	_, c.tls = conn.(*tls.Conn)
	return c, nil
}

// Close closes the connection.
func (c *Client) Close() error {
	return c.Text.Close()
}

// hello runs a hello exchange if needed.
func (c *Client) hello() error {
	if !c.didHello {
		c.didHello = true
		err := c.ehlo()
		if err != nil {
			c.helloError = c.helo()
		}
	}
	return c.helloError
}

// Hello sends a HELO or EHLO to the server as the given host name.
// Calling this method is only necessary if the client needs control
// over the host name used. The client will introduce itself as "localhost"
// automatically otherwise. If Hello is called, it must be called before
// any of the other methods.
func (c *Client) Hello(localName string) error {
	if err := validateLine(localName); err != nil {
		return err
	}
	if c.didHello {
		return errors.New("smtp: Hello called after other methods")
	}
	c.localName = localName
	return c.hello()
}

// cmd is a convenience function that sends a command and returns the response
func (c *Client) cmd(expectCode int, format string, args ...any) (int, string, error) {
	id, err := c.Text.Cmd(format, args...)
	if err != nil {
		return 0, "", err
	}
	c.Text.StartResponse(id)
	defer c.Text.EndResponse(id)
	code, msg, err := c.Text.ReadResponse(expectCode)
	return code, msg, err
}

// helo sends the HELO greeting to the server. It should be used only when the
// server does not support ehlo.
func (c *Client) helo() error {
	c.ext = nil
	_, _, err := c.cmd(250, "HELO %s", c.localName)
	return err
}

// ehlo sends the EHLO (extended hello) greeting to the server. It
// should be the preferred greeting for servers that support it.
func (c *Client) ehlo() error {
	_, msg, err := c.cmd(250, "EHLO %s", c.localName)
	if err != nil {
		return err
	}
	ext := make(map[string]string)
	extList := strings.Split(msg, "\n")
	if len(extList) > 1 {
		extList = extList[1:]
		for _, line := range extList {
			k, v, _ := strings.Cut(line, " ")
			ext[k] = v
		}
	}
	if mechs, ok := ext["AUTH"]; ok {
		c.auth = strings.Split(mechs, " ")
	}
	c.ext = ext
	return err
}

// StartTLS sends the STARTTLS command and encrypts all further communication.
// Only servers that advertise the STARTTLS extension support this function.
func (c *Client) StartTLS(config *tls.Config) error {
	if err := c.hello(); err != nil {
		return err
	}
	_, _, err := c.cmd(220, "STARTTLS")
	if err != nil {
		return err
	}
	c.conn = tls.Client(c.conn, config)
	c.Text = textproto.NewConn(c.conn)
	c.tls = true
	return c.ehlo()
}

// TLSConnectionState returns the client's TLS connection state.
// The return values are their zero values if StartTLS did
// not succeed.
func (c *Client) TLSConnectionState() (state tls.ConnectionState, ok bool) {
	tc, ok := c.conn.(*tls.Conn)
	if !ok {
		return
	}
	return tc.ConnectionState(), true
}

// Verify checks the validity of an email address on the server.
// If Verify returns nil, the address is valid. A non-nil return
// does not necessarily indicate an invalid address. Many servers
// will not verify addresses for security reasons.
func (c *Client) Verify(addr string) error {
	if err := validateLine(addr); err != nil {
		return err
	}
	if err := c.hello(); err != nil {
		return err
	}
	_, _, err := c.cmd(250, "VRFY %s", addr)
	return err
}

// Auth authenticates a client using the provided authentication mechanism.
// A failed authentication closes the connection.
// Only servers that advertise the AUTH extension support this function.
func (c *Client) Auth(a smtp.Auth) error {
	if err := c.hello(); err != nil {
		return err
	}
	encoding := base64.StdEncoding
	mech, resp, err := a.Start(&smtp.ServerInfo{c.serverName, c.tls, c.auth})
	if err != nil {
		c.Quit()
		return err
	}
	resp64 := make([]byte, encoding.EncodedLen(len(resp)))
	encoding.Encode(resp64, resp)
	code, msg64, err := c.cmd(0, strings.TrimSpace(fmt.Sprintf("AUTH %s %s", mech, resp64)))
	for err == nil {
		var msg []byte
		switch code {
		case 334:
			msg, err = encoding.DecodeString(msg64)
		case 235:
			// the last message isn't base64 because it isn't a challenge
			msg = []byte(msg64)
		default:
			err = &textproto.Error{Code: code, Msg: msg64}
		}
		if err == nil {
			resp, err = a.Next(msg, code == 334)
		}
		if err != nil {
			// abort the AUTH
			c.cmd(501, "*")
			c.Quit()
			break
		}
		if resp == nil {
			break
		}
		resp64 = make([]byte, encoding.EncodedLen(len(resp)))
		encoding.Encode(resp64, resp)
		code, msg64, err = c.cmd(0, string(resp64))
	}
	return err
}

// Mail issues a MAIL command to the server using the provided email address.
// If the server supports the 8BITMIME extension, Mail adds the BODY=8BITMIME
// parameter. If the server supports the SMTPUTF8 extension, Mail adds the
// SMTPUTF8 parameter.
// This initiates a mail transaction and is followed by one or more Rcpt calls.
func (c *Client) Mail(from string) error {
	if err := validateLine(from); err != nil {
		return err
	}
	if err := c.hello(); err != nil {
		return err
	}
	cmdStr := "MAIL FROM:<%s>"
	if c.ext != nil {
		if _, ok := c.ext["8BITMIME"]; ok {
			cmdStr += " BODY=8BITMIME"
		}
		if _, ok := c.ext["SMTPUTF8"]; ok {
			cmdStr += " SMTPUTF8"
		}
	}
	_, _, err := c.cmd(250, cmdStr, from)
	return err
}

// Rcpt issues a RCPT command to the server using the provided email address.
// A call to Rcpt must be preceded by a call to Mail and may be followed by
// a Data call or another Rcpt call.
func (c *Client) Rcpt(to string) error {
	if err := validateLine(to); err != nil {
		return err
	}
	_, _, err := c.cmd(25, "RCPT TO:<%s>", to)
	return err
}

type dataCloser struct {
	c *Client
	io.WriteCloser
}

func (d *dataCloser) Close() error {
	d.WriteCloser.Close()
	_, _, err := d.c.Text.ReadResponse(250)
	return err
}

// Data issues a DATA command to the server and returns a writer that
// can be used to write the mail headers and body. The caller should
// close the writer before calling any more methods on c. A call to
// Data must be preceded by one or more calls to Rcpt.
func (c *Client) Data() (io.WriteCloser, error) {
	_, _, err := c.cmd(354, "DATA")
	if err != nil {
		return nil, err
	}
	return &dataCloser{c, c.Text.DotWriter()}, nil
}

var testHookStartTLS func(*tls.Config) // nil, except for tests

// SendMail connects to the server at addr with TLS when port 465 or
// smtps is specified or unencrypted otherwise and switches to TLS if
// possible, authenticates with the optional mechanism a if possible,
// and then sends an email from address from, to addresses to, with
// message msg.
// The addr must include a port, as in "mail.example.com:smtp".
//
// The addresses in the to parameter are the SMTP RCPT addresses.
//
// The msg parameter should be an RFC 822-style email with headers
// first, a blank line, and then the message body. The lines of msg
// should be CRLF terminated. The msg headers should usually include
// fields such as "From", "To", "Subject", and "Cc".  Sending "Bcc"
// messages is accomplished by including an email address in the to
// parameter but not including it in the msg headers.
//
// The SendMail function and the net/smtp package are low-level
// mechanisms and provide no support for DKIM signing, MIME
// attachments (see the mime/multipart package), or other mail
// functionality. Higher-level packages exist outside of the standard
// library.
func SendMail(
	r *Remote,
	from string,
	to []string,
	msg []byte,
	metrics *metrics.Metrics,
	scanner scanner.Scanner,
	urlReplacer urlreplacer.UrlReplacerActions,
	md *maildir.Maildir,
) error {
	if r.Sender != "" {
		from = r.Sender
	}

	if err := validateLine(from); err != nil {
		return err
	}
	for _, recp := range to {
		if err := validateLine(recp); err != nil {
			return err
		}
	}
	var c *Client
	var err error
	if r.Scheme == "smtps" {
		config := &tls.Config{
			ServerName:         r.Hostname,
			InsecureSkipVerify: r.SkipVerify,
		}
		d := &net.Dialer{Timeout: time.Second * 5}
		conn, err := tls.DialWithDialer(d, "tcp", r.Addr, config)
		if err != nil {
			return err
		}
		defer conn.Close()
		c, err = NewClient(conn, r.Hostname)
		if err != nil {
			return err
		}
		if err = c.hello(); err != nil {
			return err
		}
	} else {
		c, err = Dial(r.Addr, time.Second*5)
		if err != nil {
			return err
		}
		defer c.Close()
		if err = c.hello(); err != nil {
			return err
		}
		if ok, _ := c.Extension("STARTTLS"); ok {
			config := &tls.Config{
				ServerName:         c.serverName,
				InsecureSkipVerify: r.SkipVerify,
			}
			if testHookStartTLS != nil {
				testHookStartTLS(config)
			}
			if err = c.StartTLS(config); err != nil {
				return err
			}
		} else if r.Scheme == "starttls" {
			return errors.New("starttls: server does not support extension, check remote scheme")
		}
	}
	if r.Auth != nil && c.ext != nil {
		if _, ok := c.ext["AUTH"]; !ok {
			return errors.New("smtp: server doesn't support AUTH")
		}
		if err = c.Auth(r.Auth); err != nil {
			return err
		}
	}
	if err = c.Mail(from); err != nil {
		return err
	}
	for _, addr := range to {
		if err = c.Rcpt(addr); err != nil {
			return err
		}
	}
	w, err := c.Data()
	if err != nil {
		return err
	}

	// before
	beforeMsg, err := md.Add(string(msg))
	if err != nil {
		log.Warnf("failed to save message before processing, err=%s", err)
		return err
	}

	log.WithFields(logrus.Fields{
		"from": from,
		"to":   to,
		"addr": r.Addr,
		"key":  beforeMsg.Key(),
	}).Info("saved before msg")

	replacedBody, links := c.rewriteBody(string(msg), urlReplacer)
	log.Debugf("found the following links=%+v", links)
	shouldMark := c.shouldMarkEmailByLinks(scanner, links, replacedBody)
	if shouldMark {
		replacedBody = c.addHeader(replacedBody, *cynetActionHeader, "junk")
	}

	afterMsg, err := md.Add(replacedBody)
	if err != nil {
		log.Warnf("failed to save message after processing, err=%s", err)
		return err
	}
	log.WithFields(logrus.Fields{
		"from": from,
		"to":   to,
		"addr": r.Addr,
		"key":  afterMsg.Key(),
	}).Info("saved before msg")

	_, err = w.Write([]byte(replacedBody))
	if err != nil {
		return err
	}
	err = w.Close()
	if err != nil {
		return err
	}
	return c.Quit()
}

func (c *Client) shouldMarkEmailByLinks(scanner scanner.Scanner, links map[string]bool, body string) bool {
	shouldMarkEmail := false
	for link := range links {
		res, err := scanner.ScanURL(link)
		if err != nil {
			log.Errorf("errored while scanning url=%s, err=%s", link, err)
		}
		log.Debugf("received response for link=%s, resp=%+v", link, res[0])
		if res[0].StatusCode != 0 {
			log.Warnf("found a malicious link, marking email, link=%s", link)
			shouldMarkEmail = true
			break
		}
	}
	return shouldMarkEmail
}

func (c *Client) addHeader(body string, key string, value string) string {
	headerFinishIndex := strings.Index(body, "\n\n")
	var builder strings.Builder
	builder.WriteString(body[:headerFinishIndex])
	builder.WriteString("\n")
	builder.WriteString(fmt.Sprintf("%s: %s", key, value))
	log.Debugf("adding header %s: %s", key, value)
	builder.WriteString(body[headerFinishIndex:])
	return builder.String()
}

func (c *Client) writeNewLine() {
	_, err := c.tmpBuffer.WriteString("\n")
	if err != nil {
		log.Errorf("error in writing new line, err=%s", err)
		return
	}
}

func (c *Client) writeLine(line string) {
	_, err := c.tmpBuffer.WriteString(line)
	if err != nil {
		log.Errorf("error in writing line=%s, err=%s", line, err)
		return
	}
	c.writeNewLine()
}

func (c *Client) rewriteBody(body string, urlReplacer urlreplacer.UrlReplacerActions) (string, map[string]bool) {
	// forwardedProcessor := bodyprocessors.NewForwardedProcessor(c.tmpBuffer, urlReplacer)
	defaultProcessor := bodyprocessors.NewDefaultBodyProcessor(c.tmpBuffer, urlReplacer)
	base64Processor := bodyprocessors.NewBase64Processor(c.tmpBuffer, urlReplacer)
	quotedPrintableProcessor := bodyprocessors.NewQuotedPrintableProcessor(c.tmpBuffer, urlReplacer)
	// order matters, default should be last, if one processor processed line, it wont continue to second one
	bodyProcessor := processors.NewBodyProcessors(base64Processor, quotedPrintableProcessor, defaultProcessor)
	bodyReader := strings.NewReader(body)
	scanner := bufio.NewScanner(bodyReader)
	// 8MB max token size, which can be a file encoded in base64
	scanner.Buffer([]byte{}, 8*1024*1024)
	scanner.Split(bufio.ScanLines)
	reachedBody := false
	linksMap := map[string]bool{}
	boundary := ""
	headers := strings.Builder{}
	for scanner.Scan() {
		line := scanner
		lineString := line.Text()
		if lineString == "" && !reachedBody {
			log.Debug("reached body")
			reachedBody = true
		}

		if !reachedBody {
			headers.WriteString(lineString)
			if strings.Contains(lineString, `boundary=`) {
				splitBoundary := strings.Split(lineString, "boundary=")
				boundary = strings.ReplaceAll(splitBoundary[1], `"`, "")
				logrus.Debugf("found boundary=%s", boundary)
			}
			c.writeLine(lineString)
			continue
		}

		if boundary == "" {
			logrus.Fatalf("no boundary found in headers=%s", headers.String())
		}

		links := bodyProcessor.ProcessBody(lineString, boundary)
		for _, link := range links {
			linksMap[link] = true
		}
	}

	if err := scanner.Err(); err != nil {
		log.Errorf("error in scanner, err=%s", err)
		return body, nil
	}
	// log.Debugf("quotedString=%s", quotedPrintableString)
	return c.tmpBuffer.String(), linksMap
}

// Extension reports whether an extension is support by the server.
// The extension name is case-insensitive. If the extension is supported,
// Extension also returns a string that contains any parameters the
// server specifies for the extension.
func (c *Client) Extension(ext string) (bool, string) {
	if err := c.hello(); err != nil {
		return false, ""
	}
	if c.ext == nil {
		return false, ""
	}
	ext = strings.ToUpper(ext)
	param, ok := c.ext[ext]
	return ok, param
}

// Reset sends the RSET command to the server, aborting the current mail
// transaction.
func (c *Client) Reset() error {
	if err := c.hello(); err != nil {
		return err
	}
	_, _, err := c.cmd(250, "RSET")
	return err
}

// Noop sends the NOOP command to the server. It does nothing but check
// that the connection to the server is okay.
func (c *Client) Noop() error {
	if err := c.hello(); err != nil {
		return err
	}
	_, _, err := c.cmd(250, "NOOP")
	return err
}

// Quit sends the QUIT command and closes the connection to the server.
func (c *Client) Quit() error {
	if err := c.hello(); err != nil {
		return err
	}
	_, _, err := c.cmd(221, "QUIT")
	if err != nil {
		return err
	}
	return c.Text.Close()
}

// validateLine checks to see if a line has CR or LF as per RFC 5321
func validateLine(line string) error {
	if strings.ContainsAny(line, "\n\r") {
		return errors.New("smtp: A line must not contain CR or LF")
	}
	return nil
}

// LOGIN authentication
type loginAuth struct {
	username, password string
}

func LoginAuth(username, password string) smtp.Auth {
	return &loginAuth{username, password}
}

func (a *loginAuth) Start(server *smtp.ServerInfo) (string, []byte, error) {
	return "LOGIN", []byte{}, nil
}

func (a *loginAuth) Next(fromServer []byte, more bool) ([]byte, error) {
	if more {
		switch string(fromServer) {
		case "Username:":
			return []byte(a.username), nil
		case "Password:":
			return []byte(a.password), nil
		default:
			return nil, errors.New("Unknown fromServer")
		}
	}
	return nil, nil
}