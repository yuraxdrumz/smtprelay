package contenttransferencoding

import (
	"testing"

	"github.com/decke/smtprelay/internal/app/processors/forwarded"
	"github.com/stretchr/testify/assert"
)

func TestGmailForwardingTextPlain(t *testing.T) {
	t.Skipf("add forward support")
	forwardedProcessor := forwarded.New()
	q := NewQuotedPrintableProcessor(nil, nil, forwardedProcessor)
	line := "---------- Forwarded message ---------"
	q.Process(line)
	assert.True(t, q.forwardProcessor.IsForwarded())
	endLine := ""
	q.Process(endLine)
	assert.False(t, q.forwardProcessor.IsForwarded())
}

func TestGmailForwardingTextHTML(t *testing.T) {
	t.Skipf("add forward support")
	forwardedProcessor := forwarded.New()
	q := NewQuotedPrintableProcessor(nil, nil, forwardedProcessor)
	line := "---------- Forwarded message ---------"
	q.Process(line)
	assert.True(t, q.forwardProcessor.IsForwarded())
	endLine := "u></u>"
	q.Process(endLine)
	assert.False(t, q.forwardProcessor.IsForwarded())
}
