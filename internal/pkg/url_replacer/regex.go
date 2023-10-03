package urlreplacer

import (
	"encoding/base64"
	"fmt"
	"regexp"
	"strings"

	"github.com/sirupsen/logrus"
	"mvdan.cc/xurls/v2"
)

type regexUrlReplacer struct {
	regex *regexp.Regexp
}

func NewRegexUrlReplacer() *regexUrlReplacer {
	return &regexUrlReplacer{
		regex: xurls.Relaxed(),
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
		encodedLink := base64.StdEncoding.EncodeToString(link)
		encoded := fmt.Sprintf("https://cynet-protection.com?url=%s", encodedLink)
		logrus.Debugf("replacing found link=%s, replaceTo=%s", link, encoded)
		replacedLine = strings.Replace(replacedLine, string(link), encoded, 1)
	}
	logrus.Debugf("replaced line=%s", replacedLine)
	return replacedLine, links, nil
}
