package smtp

// import (
// 	"bufio"
// 	"bytes"
// 	"encoding/base64"
// 	"fmt"
// 	"io"
// 	"mime/quotedprintable"
// 	"regexp"
// 	"strings"

// 	"github.com/decke/smtprelay/internal/pkg/scanner"
// 	"mvdan.cc/xurls/v2"
// )

// type processors struct {
// 	tmpBuffer       *bytes.Buffer
// 	base64Buffer    *strings.Builder
// 	quotedPrintable *strings.Builder
// 	urlRegex        *regexp.Regexp
// }

// func NewProcessors() *processors {
// 	return &processors{
// 		tmpBuffer:       bytes.NewBuffer([]byte{}),
// 		base64Buffer:    &strings.Builder{},
// 		quotedPrintable: &strings.Builder{},
// 		urlRegex:        xurls.Relaxed(),
// 	}
// }

// func (p *processors) addHeader(body string, key string, value string) string {
// 	headerFinishIndex := strings.Index(body, "\n\n")
// 	var builder strings.Builder
// 	builder.WriteString(body[:headerFinishIndex])
// 	builder.WriteString("\n")
// 	builder.WriteString(fmt.Sprintf("%s: %s", key, value))
// 	log.Debugf("adding header %s: %s", key, value)
// 	builder.WriteString(body[headerFinishIndex:])
// 	return builder.String()
// }

// func (p *processors) shouldMarkEmailByLinks(scanner scanner.Scanner, links map[string]bool, body string) bool {
// 	shouldMarkEmail := false

// 	for link := range links {
// 		res, err := scanner.ScanURL(link)
// 		if err != nil {
// 			log.Errorf("errored while scanning url=%s, err=%s", link, err)
// 		}
// 		log.Debugf("received response for link=%s, resp=%+v", link, res[0])
// 		if res[0].StatusCode != 0 {
// 			log.Warnf("found a malicious link, marking email, link=%s", link)
// 			shouldMarkEmail = true
// 			break
// 		}
// 	}

// 	return shouldMarkEmail
// }

// func (p *processors) writeNewLine() {
// 	_, err := p.tmpBuffer.WriteString("\n")
// 	if err != nil {
// 		log.Errorf("error in writing new line, err=%s", err)
// 	}
// }

// func (p *processors) writeLine(line string) {
// 	_, err := p.tmpBuffer.WriteString(line)
// 	if err != nil {
// 		log.Errorf("error in writing line=%s, err=%s", line, err)
// 	}
// 	p.writeNewLine()
// }

// func (p *processors) parseBase64() (string, []string) {
// 	base64DecodedBytes, err := base64.StdEncoding.DecodeString(p.base64Buffer.String())
// 	if err != nil {
// 		log.Errorf("error in writing base64 buffer, err=%s", err)
// 	}
// 	replacedBase64, foundLinks := p.replaceURLInline(p.urlRegex, string(base64DecodedBytes))
// 	base64ReplacedString := base64.StdEncoding.EncodeToString([]byte(replacedBase64))
// 	return base64ReplacedString, foundLinks
// }

// func (p *processors) parseQuotedPrintable() (string, []string) {
// 	replacedLine, foundLinks := p.replaceURLInline(p.urlRegex, p.quotedPrintable.String())
// 	qpBuf := new(bytes.Buffer)
// 	qp := quotedprintable.NewWriter(qpBuf)
// 	_, err := qp.Write([]byte(replacedLine))
// 	if err != nil {
// 		log.Errorf("error in writing quoted prinatable buffer, err=%s", err)
// 	}
// 	err = qp.Close()
// 	if err != nil {
// 		log.Errorf("error in writing quoted prinatable buffer, err=%s", err)
// 	}
// 	return qpBuf.String(), foundLinks
// }

// // check if headers exist
// // read body
// // check if content type exists to avoid reading html part
// // find all links in string
// // for each link
// // replace with our link
// // base64 original link
// // if line contains Content-Transfer-Encoding: quoted-printable, we need to address it
// func (p *processors) rewriteBody(body string) (string, map[string]bool) {
// 	rxRelaxed := xurls.Relaxed()
// 	bodyReader := strings.NewReader(body)
// 	scanner := bufio.NewScanner(bodyReader)
// 	// 8MB max token size, which can be a file encoded in base64
// 	scanner.Buffer([]byte{}, 8*1024*1024)
// 	scanner.Split(bufio.ScanLines)
// 	lastLine := ""
// 	reachedBody := false
// 	reachedQuotedPrintable := false
// 	reachedBase64 := false
// 	links := map[string]bool{}
// 	foundBoundary := ""
// 	for scanner.Scan() {
// 		line := scanner
// 		lineString := line.Text()
// 		if lineString == "" && !reachedBody {
// 			log.Debug("reached body")
// 			reachedBody = true
// 		}

// 		if !reachedBody {
// 			lastLine = lineString
// 			log.Debugf("didn't find new line, setting last line=%s", lastLine)
// 			p.writeLine(lineString)
// 			continue
// 		}

// 		// we reached body, start parsing it
// 		// we have beginning of boundary
// 		boundaryStart := strings.HasPrefix(lineString, "--")
// 		if boundaryStart {
// 			foundBoundary = lineString
// 			log.Debugf("found boundary=%s", foundBoundary)
// 			if p.base64Buffer.Len() > 0 {
// 				log.Debug("found start of another boundary, flushing as base64 to rest of body")
// 				p.writeNewLine()
// 				base64String, foundLinks := p.parseBase64()
// 				for _, link := range foundLinks {
// 					links[link] = true
// 				}
// 				p.writeLine(base64String)
// 				p.writeNewLine()
// 				p.writeLine(lineString)

// 				p.base64Buffer.Reset()
// 				reachedBase64 = false
// 				continue
// 			}

// 			if p.quotedPrintable.Len() > 0 {
// 				log.Debug("found start of another boundary, flushing as quotedPrintable to rest of body")
// 				p.writeNewLine()
// 				qpBuf, foundLinks := p.parseQuotedPrintable()
// 				for _, link := range foundLinks {
// 					links[link] = true
// 				}
// 				p.writeLine(qpBuf)
// 				p.writeNewLine()
// 				p.writeLine(lineString)

// 				p.quotedPrintable.Reset()
// 				reachedQuotedPrintable = false
// 				continue
// 			}
// 		}

// 		// we found quoted printable, turn bool to true to parse it accordingly
// 		if strings.Contains(lineString, "Content-Transfer-Encoding: quoted-printable") {
// 			p.writeLine(lineString)
// 			reachedQuotedPrintable = true
// 			continue
// 		}

// 		if strings.Contains(lineString, "Content-Transfer-Encoding: base64") {
// 			p.writeLine(lineString)
// 			reachedBase64 = true
// 			continue
// 		}

// 		switch {
// 		// if quotedPrintable is reached, we need to decode it
// 		// check for urls and encode back to internediate buffer
// 		case reachedQuotedPrintable:
// 			log.Debugf("got to quoted printable, boundary=%s, line=%s", foundBoundary, lineString)
// 			r := strings.NewReader(lineString)
// 			qpReader := quotedprintable.NewReader(r)
// 			decodedString, _ := io.ReadAll(qpReader)
// 			decoded := string(decodedString)
// 			log.Debugf("decoded quote string=%s", decoded)
// 			p.quotedPrintable.WriteString(decoded)
// 		case reachedBase64:
// 			p.base64Buffer.WriteString(lineString)
// 		default:
// 			// if no quoted printable, replace line as usual
// 			replacedLine, foundLinks := p.replaceURLInline(rxRelaxed, lineString)
// 			for _, link := range foundLinks {
// 				links[link] = true
// 			}
// 			p.writeLine(replacedLine)
// 		}
// 	}

// 	if err := scanner.Err(); err != nil {
// 		log.Errorf("error in scanner, err=%s", err)
// 		return body, nil
// 	}
// 	// log.Debugf("quotedString=%s", quotedPrintableString)
// 	return p.tmpBuffer.String(), links
// }

// func (p *processors) replaceURLInline(rxRelaxed *regexp.Regexp, line string) (string, []string) {
// 	log.Debugf("checking if line has urls, line=%s", line)
// 	foundLinks := rxRelaxed.FindAll([]byte(line), -1)
// 	// some line in body that doesnt have data, write to buffer as is
// 	if len(foundLinks) == 0 {
// 		return line, nil
// 	}

// 	replacedLine := line
// 	links := []string{}
// 	for _, link := range foundLinks {
// 		links = append(links, string(link))
// 		encodedLink := base64.StdEncoding.EncodeToString(link)
// 		encoded := fmt.Sprintf("https://cynet-protection.com?url=%s", encodedLink)
// 		log.Debugf("replacing found link=%s, replaceTo=%s", link, encoded)
// 		replacedLine = strings.Replace(replacedLine, string(link), encoded, 1)
// 	}
// 	log.Debugf("replaced line=%s", replacedLine)
// 	return replacedLine, links
// }
