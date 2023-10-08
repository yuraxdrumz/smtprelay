package contenttransferencoding

import (
	"testing"
)

func TestGmailBase64ForwardingTextPlain(t *testing.T) {
	t.Skip("TODO: add test")
	// buf := new(bytes.Buffer)
	// forwardedProcessor := forwarded.New()
	// q := NewBase64Processor(buf, nil, forwardedProcessor)
	// line := "---------- Forwarded message ---------"
	// q.Process(line, false, "", 0, processortypes.TextPlain)
	// q.Flush(processortypes.TextPlain)
	// assert.True(t, q.forwardProcessor.IsForwarded())
	// endLine := ""
	// q.Process(endLine, false, "", 0, processortypes.TextPlain)
	// assert.False(t, q.forwardProcessor.IsForwarded())
}

func TestGmailBase64ForwardingTextHTML(t *testing.T) {
	t.Skip("TODO: add test")
	// buf := new(bytes.Buffer)
	// forwardedProcessor := forwarded.New()
	// q := NewBase64Processor(buf, nil, forwardedProcessor)
	// line := "---------- Forwarded message ---------"
	// q.Process(line, false, "", 0, processortypes.TextHTML)
	// assert.True(t, q.forwardProcessor.IsForwarded())
	// endLine := "u></u>"
	// q.Process(endLine, false, "", 0, processortypes.TextHTML)
	// assert.False(t, q.forwardProcessor.IsForwarded())
}
