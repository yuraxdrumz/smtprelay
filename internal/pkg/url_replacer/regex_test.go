package urlreplacer

import (
	"testing"

	"github.com/decke/smtprelay/internal/pkg/encoder"
	"github.com/stretchr/testify/assert"
)

func TestReplaceUrlsAndNotEmail(t *testing.T) {
	text := "Hello from http://www.google.com, please check the www.test.com webpage for further information. If you have any questions please email John.Smith@test.com or Testing@test.com"
	aes256 := encoder.NewAES256Encoder()
	r := NewRegexUrlReplacer("http://localhost:8080/api/v1/url", aes256)
	replaced, links, err := r.Replace(text)
	assert.NoError(t, err)
	assert.Len(t, links, 2)
	assert.Contains(t, replaced, "John.Smith@test.com")
	assert.Contains(t, replaced, "Testing@test.com")
}
