package smtp

import (
	"bytes"
	"fmt"
	"mime/quotedprintable"
	"os"
	"strings"
	"testing"

	"github.com/amalfra/maildir/v3"
	"github.com/decke/smtprelay/internal/app/processors"
	"github.com/decke/smtprelay/internal/pkg/encoder"
	filescanner "github.com/decke/smtprelay/internal/pkg/file_scanner"
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
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	setupLogger()
	body, err := os.ReadFile("../../../examples/images/multiple.msg")
	assert.NoError(t, err)
	bodyProcessor := processors.NewBodyProcessor(urlReplacer, htmlURLReplacer)
	_, _, links, err := bodyProcessor.GetBodySections(string(body))
	assert.NoError(t, err)
	assert.Len(t, links, 0)
}

func TestSaveMailToMailDir(t *testing.T) {
	c := Client{}
	md := maildir.NewMaildir("../../../examples/maildir")
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
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
	_, err = c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
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
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
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
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
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
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	setupLogger()
	body, err := os.ReadFile("../../../examples/forward/forward_with_images.msg")
	assert.NoError(t, err)
	str := string(body)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
	assert.NoError(t, err)
	assert.Contains(t, rewrittenBody, `src=3D"https://a.travel-assets.com`)
}

func TestGetLinksDeduplicated(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	setupLogger()
	body, err := os.ReadFile("../../../examples/links/links.msg")
	assert.NoError(t, err)
	bodyProcessor := processors.NewBodyProcessor(urlReplacer, htmlURLReplacer)
	_, _, links, err := bodyProcessor.GetBodySections(string(body))
	assert.NoError(t, err)
	assert.Len(t, links, 59)
}

func TestFindAttachmentInMail(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	setupLogger()
	body, err := os.ReadFile("../../../examples/attachments/pdf.msg")
	assert.NoError(t, err)
	bodyProcessor := processors.NewBodyProcessor(urlReplacer, htmlURLReplacer)
	sections, _, _, err := bodyProcessor.GetBodySections(string(body))
	assert.NoError(t, err)
	sectionsWithAttachments := 0
	for _, section := range sections {
		if section.IsAttachment {
			sectionsWithAttachments += 1
		}
	}
	assert.NotEqual(t, 0, sectionsWithAttachments)
}

func TestFindMultipleAttachmentInMail(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	setupLogger()
	body, err := os.ReadFile("../../../examples/attachments/multiple.msg")
	assert.NoError(t, err)
	bodyProcessor := processors.NewBodyProcessor(urlReplacer, htmlURLReplacer)
	sections, _, _, err := bodyProcessor.GetBodySections(string(body))
	assert.NoError(t, err)
	sectionsWithAttachments := 0
	for _, section := range sections {
		if section.IsAttachment {
			sectionsWithAttachments += 1
			assert.NotEmpty(t, section.AttachmentFileName)
		}
	}
	assert.Equal(t, 7, sectionsWithAttachments)
}

func TestBase64InnerBoundary(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	fileScanner.EXPECT().ScanFileHash(gomock.Any()).Return(&filescanner.ScanResult{Status: filescanner.Clean}, nil).AnyTimes()
	setupLogger()

	body, err := os.ReadFile("../../../examples/base64/multi_boundary.msg")
	assert.NoError(t, err)
	str := string(body)
	newBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
	assert.NoError(t, err)
	assert.Contains(t, newBody, "--000000000000d40a410606f64018")
	assert.Contains(t, newBody, "--000000000000d40a410606f64018--")
	assert.Contains(t, newBody, "--000000000000d40a3f0606f64016")
	assert.Contains(t, newBody, "--000000000000d40a3f0606f64016--")
}

func TestBase64AttachmentUnknown(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	*cynetActionHeader = "X-Cynet-Action"
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	fileScanner.EXPECT().ScanFileHash(gomock.Any()).Return(&filescanner.ScanResult{Status: filescanner.Unknown}, nil).Times(3)
	fileScanner.EXPECT().ScanFile(gomock.Any()).Return(&filescanner.ScanResult{Status: filescanner.Clean}, nil).Times(3)
	setupLogger()

	body, err := os.ReadFile("../../../examples/base64/multi_boundary.msg")
	assert.NoError(t, err)
	str := string(body)
	newBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
	assert.NoError(t, err)
	assert.NotContains(t, newBody, fmt.Sprintf("%s: %s", *cynetActionHeader, "block"))
}

func TestBase64AttachmentMalicious(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	*cynetActionHeader = "X-Cynet-Action"
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	fileScanner.EXPECT().ScanFileHash(gomock.Any()).Return(&filescanner.ScanResult{Status: filescanner.Unknown}, nil).Times(3)
	fileScanner.EXPECT().ScanFile(gomock.Any()).Return(&filescanner.ScanResult{Status: filescanner.Malicious}, nil).Times(3)
	setupLogger()

	body, err := os.ReadFile("../../../examples/base64/multi_boundary.msg")
	assert.NoError(t, err)
	str := string(body)
	newBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
	assert.NoError(t, err)
	assert.Contains(t, newBody, fmt.Sprintf("%s: %s", *cynetActionHeader, "block"))
}

func TestBase64AttachmentFileHashMalicious(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	*cynetActionHeader = "X-Cynet-Action"
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	fileScanner.EXPECT().ScanFileHash(gomock.Any()).Return(&filescanner.ScanResult{Status: filescanner.Malicious}, nil).Times(3)
	setupLogger()

	body, err := os.ReadFile("../../../examples/base64/multi_boundary.msg")
	assert.NoError(t, err)
	str := string(body)
	newBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
	assert.NoError(t, err)
	assert.Contains(t, newBody, fmt.Sprintf("%s: %s", *cynetActionHeader, "block"))
}

func TestBase64Equals76Chars(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	setupLogger()
	body, err := os.ReadFile("../../../examples/base64/multi_boundary.msg")
	assert.NoError(t, err)
	bodyProcessor := processors.NewBodyProcessor(urlReplacer, htmlURLReplacer)
	sections, _, _, err := bodyProcessor.GetBodySections(string(body))
	assert.NoError(t, err)
	for _, section := range sections {
		if strings.Contains(section.Headers, "base64") {
			for _, line := range strings.Split(section.Data, "\n") {
				assert.LessOrEqual(t, len(line), 76)
			}
		}
	}

}

func TestBeforeForwardedShouldBeUrlChecked(t *testing.T) {
	t.Skip()
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	setupLogger()
	body, err := os.ReadFile("../../../examples/forward/text_before_forward.msg")
	assert.NoError(t, err)
	str := string(body)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
	assert.NoError(t, err)
	assert.NotContains(t, rewrittenBody, "dnsCache.host")
	assert.NotContains(t, rewrittenBody, "scpxth.xyz")
}

func TestEmailBase64WithMaliciousLink(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    1,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()

	setupLogger()
	body, err := os.ReadFile("../../../examples/base64/basic.msg")
	assert.NoError(t, err)
	str := string(body)
	*cynetActionHeader = "X-Cynet-Action"
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
	assert.NoError(t, err)
	assert.Contains(t, rewrittenBody, fmt.Sprintf("%s: %s", *cynetActionHeader, "junk"))
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
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	body, err := os.ReadFile("../../../examples/links/links.msg")
	assert.NoError(t, err)
	str := string(body)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	*cynetActionHeader = "X-Cynet-Action"
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    1,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
	assert.NoError(t, err)
	assert.Contains(t, rewrittenBody, fmt.Sprintf("%s: %s", *cynetActionHeader, "junk"))
}

func TestEncodingParsed(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	setupLogger()
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	body, err := os.ReadFile("../../../examples/encodings/koi8-r.msg")
	assert.NoError(t, err)
	str := string(body)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	*cynetActionHeader = "X-Cynet-Action"
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	bodyProcessor := processors.NewBodyProcessor(urlReplacer, htmlURLReplacer)
	sections, _, _, err := bodyProcessor.GetBodySections(str)
	assert.NoError(t, err)
	assert.Len(t, sections, 2)
	for _, section := range sections {
		assert.NotEmpty(t, section.Charset)
		assert.Equal(t, section.Charset, "koi8-r")
	}
}

func TestDoNotInjectHeadersWhenLinkNotMalicious(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	setupLogger()
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	body, err := os.ReadFile("../../../examples/links/links.msg")
	assert.NoError(t, err)
	str := string(body)
	*cynetActionHeader = "X-Cynet-Action"
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
	assert.NoError(t, err)
	assert.NotContains(t, rewrittenBody, fmt.Sprintf("%s: %s", *cynetActionHeader, "junk"))
}

func TestBoundaryMultiline(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	fileScanner.EXPECT().ScanFileHash(gomock.Any()).Return(&filescanner.ScanResult{Status: filescanner.Clean}, nil).AnyTimes()

	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()

	setupLogger()
	body, err := os.ReadFile("../../../examples/images/outlook.msg")
	assert.NoError(t, err)
	str := string(body)
	rewrittenBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
	assert.NoError(t, err)
	assert.Contains(t, rewrittenBody, "--_010_DB9PR01MB7323E328D53CE6245A91D453ACCEADB9PR01MB7323eurp_")
	assert.Contains(t, rewrittenBody, "--_010_DB9PR01MB7323E328D53CE6245A91D453ACCEADB9PR01MB7323eurp_--")
	assert.Contains(t, rewrittenBody, "--_000_DB9PR01MB7323E328D53CE6245A91D453ACCEADB9PR01MB7323eurp_")
	assert.Contains(t, rewrittenBody, "--_000_DB9PR01MB7323E328D53CE6245A91D453ACCEADB9PR01MB7323eurp_--")
}

func TestWriteAllEmails(t *testing.T) {
	c := Client{}
	c.tmpBuffer = bytes.NewBuffer([]byte{})
	aes256Encoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("localhost:1333", aes256Encoder)
	htmlURLReplacer := urlreplacer.NewHTMLReplacer(urlReplacer)
	ctrl := gomock.NewController(t)
	sc := scanner.NewMockScanner(ctrl)
	fileScannerCtrl := gomock.NewController(t)
	fileScanner := filescanner.NewMockScanner(fileScannerCtrl)
	fileScanner.EXPECT().ScanFileHash(gomock.Any()).Return(&filescanner.ScanResult{Status: filescanner.Clean}, nil).AnyTimes()

	setupLogger()
	sc.EXPECT().ScanURL(gomock.Any()).Return([]*scanner.ScanResult{
		{
			StatusCode:    0,
			DomainGrey:    false,
			StatusMessage: []string{},
		},
	}, nil).AnyTimes()
	items, _ := os.ReadDir("../../../examples")
	for _, item := range items {
		if item.Name() == "test_results" {
			continue
		}
		if item.IsDir() {
			subitems, _ := os.ReadDir(fmt.Sprintf("../../../examples/%s", item.Name()))
			for _, subitem := range subitems {
				if !subitem.IsDir() {
					// handle file there
					emailToCheck := fmt.Sprintf("../../../examples/%s/%s", item.Name(), subitem.Name())
					body, err := os.ReadFile(emailToCheck)
					assert.NoError(t, err)
					str := string(body)
					rewrittenBody, err := c.rewriteEmail(str, urlReplacer, htmlURLReplacer, sc, fileScanner)
					assert.NoError(t, err)
					os.WriteFile(fmt.Sprintf("../../../examples/test_results/%s", subitem.Name()), []byte(rewrittenBody), 0666)
				}
			}
		} else {
			// handle file there
			t.Log(item.Name())
		}
	}
}
