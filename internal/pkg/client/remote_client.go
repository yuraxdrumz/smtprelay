package client

import (
	"crypto/tls"
	"errors"
	"net"
	"time"

	"github.com/decke/smtprelay/internal/pkg/remotes"
)

func NewRemoteClientConnection(r *remotes.Remote) (*Client, error) {
	switch r.Scheme {
	case "smtps":
		return createClientSMTPS(r)
	default:
		return createClient(r)
	}
}

func createClientSMTPS(r *remotes.Remote) (*Client, error) {
	config := &tls.Config{
		ServerName:         r.Hostname,
		InsecureSkipVerify: r.SkipVerify,
	}
	d := &net.Dialer{Timeout: time.Second * 5}
	conn, err := tls.DialWithDialer(d, "tcp", r.Addr, config)
	if err != nil {
		return nil, err
	}
	defer conn.Close()
	c, err := NewClient(conn, r.Hostname)
	if err != nil {
		return nil, err
	}
	if err = c.hello(); err != nil {
		return nil, err
	}

	return c, nil
}

func createClient(r *remotes.Remote) (*Client, error) {
	c, err := Dial(r.Addr, time.Second*5)
	if err != nil {
		return nil, err
	}
	defer c.Close()
	if err = c.hello(); err != nil {
		return nil, err
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
			return nil, err
		}
	} else if r.Scheme == "starttls" {
		return nil, errors.New("starttls: server does not support extension, check remote scheme")
	}

	return c, nil
}
