package smtp

import (
	"bytes"
	"mime/quotedprintable"
	"os"
	"strings"
	"testing"

	"github.com/decke/smtprelay/internal/pkg/scanner"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/golang/mock/gomock"
	"github.com/stretchr/testify/assert"
)

func TestMultipleImagesBase64(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	urlReplacer := urlreplacer.NewRegexUrlReplacer()
	setupLogger()
	body, err := os.ReadFile("../../../examples/multiple_images.txt")
	if err != nil {
		log.Fatalf("unable to read file: %v", err)
	}
	str := string(body)
	_, links := c.rewriteBody(str, urlReplacer)
	assert.Len(t, links, 0)
}

func TestEmailWithRewriteBodyLinksDedup(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	urlReplacer := urlreplacer.NewRegexUrlReplacer()
	setupLogger()
	body, err := os.ReadFile("../../../examples/links.txt")
	if err != nil {
		log.Fatalf("unable to read file: %v", err)
	}
	str := string(body)
	rewrittenBody, links := c.rewriteBody(str, urlReplacer)
	assert.True(t, strings.HasSuffix(rewrittenBody, "</div></div>\n\n--0000000000008dfe8706066a3fbb--\n"))
	assert.Len(t, links, 67)
}

func TestEmailBase64WithMaliciousLink(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	urlReplacer := urlreplacer.NewRegexUrlReplacer()
	setupLogger()
	body, err := os.ReadFile("../../../examples/base64.txt")
	if err != nil {
		log.Fatalf("unable to read file: %v", err)
	}
	str := string(body)
	rewrittenBody, links := c.rewriteBody(str, urlReplacer)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)

	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    1,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil)

	assert.Len(t, links, 10)

	shouldMark := c.shouldMarkEmailByLinks(sc, links, rewrittenBody)
	if shouldMark {
		rewrittenBody = c.addHeader(rewrittenBody, "key", "value")
	}
	assert.Contains(t, rewrittenBody, "key: value")
}

func TestQuotedStringWithReplaceInlineNoLinkDedup(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	urlReplacer := urlreplacer.NewRegexUrlReplacer()
	setupLogger()
	str := `<div dir="ltr">look look<div><br></div><div><a href="http://google.com">http://google.com</a></div><div><br></div><div><a href="http://google.com">http://google.com</a><br></div><div><a href="http://google.com">http://google.com</a> <a href="http://google.com">http://google.com</a> <br></div><div><a href="http://google.com">http://google.com</a><br></div><div><a href="http://google.com">http://google.com</a><br></div><div><a href="http://google.com">http://google.com</a><br></div></div>`
	replacedLine, links, err := urlReplacer.Replace(str)
	assert.NoError(t, err)
	qpBuf := new(bytes.Buffer)
	qp := quotedprintable.NewWriter(qpBuf)
	_, err = qp.Write([]byte(replacedLine))
	assert.NoError(t, err)
	err = qp.Close()
	assert.NoError(t, err)
	assert.True(t, strings.HasSuffix(qpBuf.String(), "</div></div>"), qpBuf.String())
	assert.Len(t, links, 14)
}

func TestInjectHeaders(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	setupLogger()
	urlReplacer := urlreplacer.NewRegexUrlReplacer()
	body, err := os.ReadFile("../../../examples/links.txt")
	if err != nil {
		log.Fatalf("unable to read file: %v", err)
	}
	str := string(body)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	_, links := c.rewriteBody(str, urlReplacer)

	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    1,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil)

	shouldMark := c.shouldMarkEmailByLinks(sc, links, str)
	if shouldMark {
		str = c.addHeader(str, "key", "value")
	}
	assert.Contains(t, str, "key: value")
}

func TestDoNotInjectHeaders(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	setupLogger()
	urlReplacer := urlreplacer.NewRegexUrlReplacer()
	body, err := os.ReadFile("../../../examples/links.txt")
	if err != nil {
		log.Fatalf("unable to read file: %v", err)
	}
	str := string(body)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	_, links := c.rewriteBody(str, urlReplacer)

	for link := range links {
		sc.EXPECT().ScanURL(link).Return([]*scanner.ScanResult{
			{
				StatusCode:    0,
				DomainGrey:    false,
				StatusMessage: []string{},
			},
		}, nil)
	}

	shouldMark := c.shouldMarkEmailByLinks(sc, links, str)
	if shouldMark {
		str = c.addHeader(str, "key", "value")
	}
	assert.NotContains(t, str, "key: value")
}
