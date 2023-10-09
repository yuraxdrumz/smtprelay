package smtp

import (
	"bytes"
	"mime/quotedprintable"
	"os"
	"strings"
	"testing"

	"github.com/amalfra/maildir/v3"
	"github.com/decke/smtprelay/internal/app/processors"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	"github.com/decke/smtprelay/internal/pkg/encoder"
	"github.com/decke/smtprelay/internal/pkg/scanner"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/golang/mock/gomock"
	"github.com/stretchr/testify/assert"
)

func TestImagesShouldNotBeProcessed(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	setupLogger()
	body, err := os.ReadFile("../../../examples/images/multiple.msg")
	assert.NoError(t, err)
	bodyProcessor := processors.NewBodyProcessor(urlReplacer)
	sections, _, _, err := bodyProcessor.GetBodySections(string(body))
	assert.NoError(t, err)
	assert.NoError(t, err)
	for _, section := range sections {
		if section.ContentType == processortypes.Image {
			assert.False(t, section.Processed)
		} else {
			assert.True(t, section.Processed)
		}
	}
}

func TestSaveMailToMailDir(t *testing.T) {
	c := Client{}
	md := maildir.NewMaildir("../../../examples/maildir")
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)

	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	setupLogger()
	body, err := os.ReadFile("../../../examples/links/links.msg")
	assert.NoError(t, err)
	str := string(body)
	_, err = c.rewriteEmail(str, urlReplacer, sc)
	assert.NoError(t, err)
	m, _ := md.Add(str)
	assert.NotEmpty(t, m.Key())
	md.Delete(m.Key())
	os.RemoveAll("../../../examples/maildir")
}

func TestForwardShouldAppearLikeInOriginal(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	setupLogger()
	body, err := os.ReadFile("../../../examples/forward/double_forward.msg")
	assert.NoError(t, err)
	str := string(body)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, sc)
	assert.NoError(t, err)
	split := strings.Split(rewrittenBody, "\n")
	timesSeenForwarded := 0
	for _, line := range split {
		if strings.Contains(line, "---------- Forwarded message ---------") {
			timesSeenForwarded += 1
		}
	}

	assert.EqualValuesf(t, 4, timesSeenForwarded, "should have been only two forwards in processed body")
}

func TestDoNotReplaceImageSrcs(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	setupLogger()
	body, err := os.ReadFile("../../../examples/links/skip_src.msg")
	assert.NoError(t, err)
	str := string(body)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, sc)
	assert.NoError(t, err)
	assert.Contains(t, rewrittenBody, "src=3D\"https://image.properties")
	// assert.NotContains(t, links, "https://image.properties.emaarinfo.com/lib/fe3811717564047c741d76/m/1/99c40832-90df-4138-b786-d70bd1ed119b.jpg")
}

func TestGetLinksDeduplicated(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	setupLogger()
	body, err := os.ReadFile("../../../examples/links/links.msg")
	assert.NoError(t, err)
	str := string(body)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, sc)
	os.WriteFile("../../../examples/test_results/TestGetLinksDeduplicated.txt", []byte(rewrittenBody), 0666)
	assert.NoError(t, err)
	assert.NotContains(t, rewrittenBody, "</div></div>\n\n--0000000000008dfe8706066a3fbb--\n")
	// assert.Len(t, links, 67)
}

func TestBase64InnerBoundary(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	setupLogger()
	body, err := os.ReadFile("../../../examples/base64/multi_boundary.msg")
	assert.NoError(t, err)
	str := string(body)
	newBody, err := c.rewriteEmail(str, urlReplacer, nil)
	assert.NoError(t, err)
	assert.Contains(t, newBody, "--000000000000d40a410606f64018")
	assert.Contains(t, newBody, "--000000000000d40a410606f64018--")
	assert.Contains(t, newBody, "--000000000000d40a3f0606f64016")
	assert.Contains(t, newBody, "--000000000000d40a3f0606f64016--")
}

func TestBase64Equals76Chars(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	setupLogger()
	body, err := os.ReadFile("../../../examples/base64/multi_boundary.msg")
	assert.NoError(t, err)
	str := string(body)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, nil)
	assert.NoError(t, err)
	split := strings.Split(rewrittenBody, "\n")
	for _, line := range split {
		if line == "Y2hlY2sgaXQKCi0tLS0tLS0tLS0gRm9yd2FyZGVkIG1lc3NhZ2UgLS0tLS0tLS0tCkZyb206IFl1" {
			assert.True(t, true)
			return
		}
	}

	assert.Fail(t, "should have been asserted true on 76 chars base64")
}

func TestBeforeForwardedShouldBeUrlChecked(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	setupLogger()
	body, err := os.ReadFile("../../../examples/forward/text_before_forward.msg")
	assert.NoError(t, err)
	str := string(body)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, nil)
	assert.NoError(t, err)
	assert.NotContains(t, rewrittenBody, "dnsCache.host")
	assert.NotContains(t, rewrittenBody, "scpxth.xyz")
}

func TestEmailBase64WithMaliciousLink(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)

	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    1,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil)

	setupLogger()
	body, err := os.ReadFile("../../../examples/base64/basic.msg")
	assert.NoError(t, err)
	str := string(body)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, sc)
	assert.NoError(t, err)
	assert.Contains(t, rewrittenBody, "key: value")
}

func TestQuotedStringWithReplaceInlineNoLinkDedup(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
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
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	body, err := os.ReadFile("../../../examples/links/links.msg")
	assert.NoError(t, err)
	str := string(body)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    1,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, sc)
	assert.NoError(t, err)
	assert.Contains(t, rewrittenBody, "key: value")
}

func TestDoNotInjectHeadersWhenLinkNotMalicious(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	setupLogger()
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	body, err := os.ReadFile("../../../examples/links/links.msg")
	assert.NoError(t, err)
	str := string(body)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, sc)
	assert.NoError(t, err)
	assert.NotContains(t, rewrittenBody, "key: value")
}
