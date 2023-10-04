package processors

import (
	"fmt"
	"strings"
)

type BodyProcessor interface {
	Process(lineString string, didReachBoundary bool, boundary string, boundaryNum int) (didProcess bool, links []string)
}

type bodyProcessors struct {
	bodyProcessors []BodyProcessor
	boundary       string
	boundaryNum    int
}

func NewBodyProcessors(processors ...BodyProcessor) *bodyProcessors {
	return &bodyProcessors{
		bodyProcessors: processors,
	}
}

func (b *bodyProcessors) ProcessBody(line string, boundary string) (links []string) {
	boundaryStart := fmt.Sprintf("--%s", boundary)
	didHitBoundary := strings.HasPrefix(line, boundaryStart)
	if didHitBoundary {
		if b.boundary == "" {
			b.boundary = boundary
		}
		b.boundaryNum += 1
	}
	return b.processOneOf(line, didHitBoundary, b.boundary, b.boundaryNum)
}

func (b *bodyProcessors) processOneOf(line string, boundaryStart bool, boundary string, boundaryNum int) (links []string) {
	for _, p := range b.bodyProcessors {
		didProcess, links := p.Process(line, boundaryStart, boundary, boundaryNum)
		if didProcess {
			return links
		}
	}
	return nil
}
