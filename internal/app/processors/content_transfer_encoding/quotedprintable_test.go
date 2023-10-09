package contenttransferencoding

import (
	"testing"

	"github.com/decke/smtprelay/internal/app/processors/forwarded"
	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	"github.com/stretchr/testify/assert"
)

func TestGmailForwardingTextPlain(t *testing.T) {
	forwardedProcessor := forwarded.New()
	q := NewQuotedPrintableProcessor(nil, forwardedProcessor)
	line := "---------- Forwarded message ---------"
	q.Process(line, false, "", 0, processortypes.TextPlain)
	assert.True(t, q.forwardProcessor.IsForwarded())
	endLine := ""
	q.Process(endLine, false, "", 0, processortypes.TextPlain)
	assert.False(t, q.forwardProcessor.IsForwarded())
}

func TestGmailForwardingTextHTML(t *testing.T) {
	forwardedProcessor := forwarded.New()
	q := NewQuotedPrintableProcessor(nil, forwardedProcessor)
	line := "---------- Forwarded message ---------"
	q.Process(line, false, "", 0, processortypes.TextHTML)
	assert.True(t, q.forwardProcessor.IsForwarded())
	endLine := "u></u>"
	q.Process(endLine, false, "", 0, processortypes.TextHTML)
	assert.False(t, q.forwardProcessor.IsForwarded())
}
