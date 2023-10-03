package urlreplacer

import (
	"encoding/base64"
	"encoding/hex"
	"fmt"
	"regexp"
	"strings"

	"github.com/decke/smtprelay/internal/pkg/encoder"
	"github.com/sirupsen/logrus"
	"mvdan.cc/xurls/v2"
)

type regexUrlReplacer struct {
	regex      *regexp.Regexp
	url        string
	urlEncoder encoder.Encoder
}

func NewRegexUrlReplacer(url string, urlEncoder encoder.Encoder) *regexUrlReplacer {
	return &regexUrlReplacer{
		regex:      xurls.Relaxed(),
		url:        url,
		urlEncoder: urlEncoder,
	}
}

func (r *regexUrlReplacer) Replace(str string) (replaced string, links []string, err error) {
	logrus.Debugf("checking if line has urls, line=%s", str)
	foundLinks := r.regex.FindAll([]byte(str), -1)
	// some line in body that doesnt have data, write to buffer as is
	if len(foundLinks) == 0 {
		return str, nil, nil
	}

	replacedLine := str
	links = []string{}
	for _, link := range foundLinks {
		links = append(links, string(link))
		bytes := []byte("passphrasewhichneedstobe32bytes!")
		key := hex.EncodeToString(bytes)
		encodedLink, err := r.urlEncoder.Encode(string(link), key)
		if err != nil {
			return "", nil, err
		}
		base64Link := base64.StdEncoding.EncodeToString([]byte(encodedLink))
		encoded := fmt.Sprintf("%s?u=%s", r.url, base64Link)
		logrus.Debugf("replacing found link=%s, replaceTo=%s", link, encoded)
		replacedLine = strings.Replace(replacedLine, string(link), encoded, 1)
	}
	logrus.Debugf("replaced line=%s", replacedLine)
	return replacedLine, links, nil
}
