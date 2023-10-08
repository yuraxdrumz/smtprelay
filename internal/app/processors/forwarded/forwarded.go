package forwarded

import (
	"strings"

	processortypes "github.com/decke/smtprelay/internal/app/processors/processor_types"
	"github.com/sirupsen/logrus"
)

type Forwarded struct {
	isForwarded bool
}

func New() *Forwarded {
	return &Forwarded{
		isForwarded: false,
	}
}

func (q *Forwarded) IsForwarded() bool {
	return q.isForwarded
}

// outlook only adds From, Date, To and Subject
// From: Yuri Khomyakov <yurik@cynet.com>
// Date: Sunday, 8 October 2023 at 12:41
// To: eyaltest@cynetint.onmicrosoft.com <eyaltest@cynetint.onmicrosoft.com>
// Subject: Find forward headers in outlook
// TODO: see if we need to identify forward in outlook
func (q *Forwarded) CheckForwardedStartGmail(lineString string, contentType processortypes.ContentType) (isForwarded bool) {
	// gmail adds forwarded message
	if strings.Contains(lineString, "---------- Forwarded message ---------") || strings.Contains(lineString, "Forwarded message") || strings.Contains(lineString, `<div dir="ltr" class="gmail_attr">`) {
		logrus.Infof("hit gmail forwarded start")
		q.isForwarded = true
		return true
	}
	return false
}

func (q *Forwarded) generatePossibleGmailEndings() []string {
	gmailForwardingEnding := "<u></u>"
	endingPossibilities := []string{}
	for idx := range gmailForwardingEnding {
		endingPossibilities = append(endingPossibilities, gmailForwardingEnding[idx:])
	}
	return endingPossibilities
}

func (q *Forwarded) CheckForwardingFinishGmail(lineString string, contentType processortypes.ContentType) {
	switch contentType {
	case processortypes.TextHTML:
		// allEndings := q.generatePossibleGmailEndings()
		allEndings := "<u></u>"
		// for _, ending := range allEndings {
		if strings.Contains(lineString, allEndings) {
			logrus.Infof("hit gmail forwarded end with content type: text/html, ending=%s", allEndings)
			q.isForwarded = false
			break
		}
		// }

		divEndings := "</div></div>"
		if strings.Contains(lineString, divEndings) {
			logrus.Infof("hit gmail forwarded end with content type: text/html, ending=%s", divEndings)
			q.isForwarded = false
			break
		}

		brEndings := "<br><br>"
		if strings.Contains(lineString, brEndings) {
			logrus.Infof("hit gmail forwarded end with content type: text/html, ending=%s", brEndings)
			q.isForwarded = false
			break
		}

	case processortypes.TextPlain:
		if lineString == "" {
			logrus.Infof("hit gmail forwarded end with content type: text/plain")
			q.isForwarded = false
		}
	}

}
