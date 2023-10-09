package processors

import (
	"testing"

	"github.com/decke/smtprelay/internal/pkg/encoder"
	urlreplacer "github.com/decke/smtprelay/internal/pkg/url_replacer"
	"github.com/stretchr/testify/assert"
)

func TestProcessorsNoBoundary(t *testing.T) {
	aesEncoder := encoder.NewAES256Encoder()
	urlReplacer := urlreplacer.NewRegexUrlReplacer("http://test.com", aesEncoder)
	p := NewBodyProcessor(urlReplacer)
	_, _, err := p.ProcessBody("test")
	assert.Error(t, err)
}
