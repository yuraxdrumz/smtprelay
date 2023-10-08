package contenttransferencoding

import (
	"bytes"
	"testing"

	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	"github.com/stretchr/testify/assert"
)

func TestGmailForwardingTextPlain(t *testing.T) {
	buf := new(bytes.Buffer)
	q := NewQuotedPrintableProcessor(buf, nil)
	line := "---------- Forwarded message ---------"
	isForwarded := q.checkForwardedStartGmail(line, processortypes.TextPlain)
	assert.True(t, isForwarded)
	assert.True(t, q.isForwarded)
	endLine := ""
	q.checkForwardingFinishGmail(endLine, processortypes.TextPlain)
	assert.False(t, q.isForwarded)
}

func TestGmailForwardingTextHTML(t *testing.T) {
	buf := new(bytes.Buffer)
	q := NewQuotedPrintableProcessor(buf, nil)
	line := "---------- Forwarded message ---------"
	isForwarded := q.checkForwardedStartGmail(line, processortypes.TextHTML)
	assert.True(t, isForwarded)
	assert.True(t, q.isForwarded)
	endLine := "u></u>"
	q.checkForwardingFinishGmail(endLine, processortypes.TextHTML)
	assert.False(t, q.isForwarded)
}
