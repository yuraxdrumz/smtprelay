package sendmail

import (
	"bytes"
	"crypto/sha256"
	"encoding/base64"
	"errors"
	"fmt"
	"io"
	"regexp"
	"strings"

	"github.com/decke/smtprelay/internal/app/processors"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	"github.com/decke/smtprelay/internal/pkg/client"
	filescanner "github.com/decke/smtprelay/internal/pkg/file_scanner"
	filescannertypes "github.com/decke/smtprelay/internal/pkg/file_scanner/types"
	"github.com/decke/smtprelay/internal/pkg/metrics"
	"github.com/decke/smtprelay/internal/pkg/remotes"
	saveemail "github.com/decke/smtprelay/internal/pkg/save_email"
	"github.com/decke/smtprelay/internal/pkg/scanner"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/decke/smtprelay/internal/pkg/utils"
	"github.com/sirupsen/logrus"
)

type SendMail struct {
	metrics           *metrics.Metrics
	urlReplacer       urlreplacer.UrlReplacerActions
	htmlUrlReplacer   urlreplacer.UrlReplacerActions
	scanner           scanner.Scanner
	fileScanner       filescanner.Scanner
	saveEmail         saveemail.SaveEmail
	cynetActionHeader string
}

func NewSendMail(metrics *metrics.Metrics, urlReplacer urlreplacer.UrlReplacerActions, htmlUrlReplacer urlreplacer.UrlReplacerActions, scanner scanner.Scanner, fileScanner filescanner.Scanner, saveEmail saveemail.SaveEmail, cynetActionHeader string) *SendMail {
	return &SendMail{
		metrics:           metrics,
		urlReplacer:       urlReplacer,
		htmlUrlReplacer:   htmlUrlReplacer,
		scanner:           scanner,
		fileScanner:       fileScanner,
		saveEmail:         saveEmail,
		cynetActionHeader: cynetActionHeader,
	}
}

func (s *SendMail) SendMail(
	r *remotes.Remote,
	c *client.Client,
	from string,
	to []string,
	msg []byte,
) error {
	if r.Sender != "" {
		from = r.Sender
	}

	if err := utils.ValidateLine(from); err != nil {
		return err
	}
	for _, recp := range to {
		if err := utils.ValidateLine(recp); err != nil {
			return err
		}
	}

	if r.Auth != nil && c.GetExt() != nil {
		if _, ok := c.GetExt()["AUTH"]; !ok {
			return errors.New("smtp: server doesn't support AUTH")
		}
		if err := c.Auth(r.Auth); err != nil {
			return err
		}
	}
	if err := c.Mail(from); err != nil {
		return err
	}
	for _, addr := range to {
		if err := c.Rcpt(addr); err != nil {
			return err
		}
	}
	w, err := c.Data()
	if err != nil {
		return err
	}

	// before
	beforeMsg, err := s.saveEmail.SaveEmail(string(msg))
	if err != nil {
		logrus.Warnf("failed to save message before processing, err=%s", err)
		return err
	}

	logrus.WithFields(logrus.Fields{
		"from": from,
		"to":   to,
		"addr": r.Addr,
		"key":  beforeMsg.Name,
	}).Info("saved before msg")

	newBodyString, err := s.rewriteEmail(string(msg))
	if err != nil {
		logrus.Warnf("failed to process body, err=%s", err)
		return err
	}

	afterMsg, err := s.saveEmail.SaveEmail(newBodyString)
	if err != nil {
		logrus.Warnf("failed to save message after processing, err=%s", err)
		return err
	}
	logrus.WithFields(logrus.Fields{
		"from": from,
		"to":   to,
		"addr": r.Addr,
		"key":  afterMsg.Name,
	}).Info("saved before msg")

	_, err = w.Write([]byte(newBodyString))
	if err != nil {
		return err
	}
	err = w.Close()
	if err != nil {
		return err
	}
	return c.Quit()
}

// FIXME make scan batched
func (s *SendMail) shouldMarkEmailByAttachments(sections []*processortypes.Section) bool {
	shouldMarkEmail := false
out:
	for _, section := range sections {
		if section.IsAttachment {
			logrus.Debugf("found attachment=%s", section.AttachmentFileName)
			fileBytes, fileName, fileSha256, err := s.handleSectionAttachment(section)
			if err != nil {
				logrus.Errorf("errored while handling section attachment, err=%s", err)
				continue
			}
			fileLogger := logrus.WithFields(logrus.Fields{
				"fileName":   fileName,
				"fileSha256": fileSha256,
			})

			fileLogger.Debugf("checking file sha256")
			// send file hash for check
			scanResult, err := s.fileScanner.ScanFileHash(fileName, fileSha256)
			if err != nil {
				fileLogger.Errorf("errored while checking file hash, err=%s", err)
				continue
			}

			if scanResult == nil {
				fileLogger.Errorf("empty response from checking file hash")
				continue
			}

			fileLogger.Debugf("scan result for file sha256=%+v", scanResult)
			switch scanResult.Status {
			case filescannertypes.Unknown:
				fileLogger.Debug("received status unknown, checking file bytes")
				fullScanResult, err := s.fileScanner.ScanFile(fileName, fileBytes)
				if err != nil {
					fileLogger.Errorf("errored while checking file bytes, err=%s", err)
					continue
				}

				fileLogger.Debugf("scan result for file bytes=%+v", fullScanResult)
				if fullScanResult.Status == filescannertypes.Malicious {
					shouldMarkEmail = true
					break out
				}
			case filescannertypes.Malicious:
				shouldMarkEmail = true
				break out
			}
		}
	}
	return shouldMarkEmail
}

// FIXME: make scan batched
func (s *SendMail) shouldMarkEmailByLinks(links map[string]bool) bool {
	shouldMarkEmail := false
	for link := range links {
		res, err := s.scanner.ScanURL(link)
		if err != nil {
			logrus.Errorf("errored while scanning url=%s, err=%s", link, err)
			continue
		}
		if res == nil {
			logrus.Errorf("empty response from scan link=%s", link)
			continue
		}
		logrus.Debugf("received response for link=%s, resp=%+v", link, res[0])
		if res[0].StatusCode != 0 {
			logrus.Warnf("found a malicious link, marking email, link=%s", link)
			shouldMarkEmail = true
			break
		}
	}
	return shouldMarkEmail
}

func (s *SendMail) addHeader(headers *strings.Builder, key string, value string) {
	headers.WriteString(fmt.Sprintf("%s: %s", key, value))
	headers.WriteString("\n")
	logrus.Debugf("adding header %s: %s", key, value)
}

// currently all attachments can only have newlines and boundary end when email has multiple boundaries
// we clean them up to get the raw data
func (s *SendMail) cleanUpData(data string) string {
	data = strings.TrimPrefix(data, "\n")
	data = strings.TrimSuffix(data, "\n")
	re := regexp.MustCompile("--.*--")
	boundary := re.Find([]byte(data))
	data = strings.Replace(data, string(boundary), "", 1)
	data = strings.TrimSuffix(data, "\n")
	data = strings.TrimSuffix(data, "\n")
	// os.WriteFile("./attachments/5.txt", []byte(data), 0666)
	return data
}

// decode to binary.
// calculate file hash
// if attachment filename doesnt exist, take file hash
// save attachment with txt ending to file system to not allow executables on fs
func (s *SendMail) handleSectionAttachment(section *processortypes.Section) ([]byte, string, string, error) {
	switch section.ContentTransferEncoding {
	case processortypes.Base64:
		cleanedSectionData := s.cleanUpData(section.Data)
		dec := base64.NewDecoder(base64.StdEncoding, strings.NewReader(cleanedSectionData))
		buf := &bytes.Buffer{}
		_, err := io.Copy(buf, dec)
		if err != nil {
			return nil, "", "", err
		}

		hash := sha256.New()
		_, err = hash.Write(buf.Bytes())
		if err != nil {
			return nil, "", "", err
		}

		fileSha256 := hash.Sum(nil)

		if section.AttachmentFileName == "" {
			// use sha256 of file
			section.AttachmentFileName = fmt.Sprintf("%x", fileSha256)
		}

		return buf.Bytes(), section.AttachmentFileName, fmt.Sprintf("%x", fileSha256), nil
	default:
		logrus.Warnf("content transfer encoding for attachments is not implemented, skipping processing, encoding=%s", section.ContentTransferEncoding)
	}
	return []byte(section.Data), "", "", nil
}

func (s *SendMail) cleanHeadersFromKey(headers *strings.Builder, key string) *strings.Builder {
	str := headers.String()
	re := regexp.MustCompile(fmt.Sprintf(`\n.*%s:.*`, key))
	removedStr := re.ReplaceAllString(str, "")
	newHeadersStr := strings.Builder{}
	_, err := newHeadersStr.WriteString(removedStr)
	if err != nil {
		logrus.Errorf("failed writing cleaned heaers to strings.Builder, err=%s", err)
		return headers
	}
	return &newHeadersStr
}

func (s *SendMail) rewriteEmail(msg string) (string, error) {
	bodyProcessor := processors.NewBodyProcessor(s.urlReplacer, s.htmlUrlReplacer)
	sections, headers, links, err := bodyProcessor.GetBodySections(msg)
	if err != nil {
		return "", err
	}

	headers = s.cleanHeadersFromKey(headers, s.cynetActionHeader)
	shouldMarkByLinks := s.shouldMarkEmailByLinks(links)
	if shouldMarkByLinks {
		s.addHeader(headers, s.cynetActionHeader, "block")
	}
	if !shouldMarkByLinks {
		shouldMarkByAttachments := s.shouldMarkEmailByAttachments(sections)
		if shouldMarkByAttachments {
			s.addHeader(headers, s.cynetActionHeader, "block")
		}
	}

	newBody := &strings.Builder{}
	newBody.WriteString(headers.String())
	newBody.WriteString("\n")
	for _, section := range sections {
		newBody.WriteString(section.Headers)
		newBody.WriteString("\n")
		newBody.WriteString(section.Data)
	}
	return newBody.String(), nil
}
