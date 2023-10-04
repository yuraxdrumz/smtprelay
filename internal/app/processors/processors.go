package processors

import "strings"

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

func (b *bodyProcessors) ProcessBody(line string) (links []string) {
	boundaryStart := strings.HasPrefix(line, "--")
	if boundaryStart {
		if b.boundary == "" {
			b.boundary = line
		}
		b.boundaryNum += 1
	}
	return b.processOneOf(line, boundaryStart, b.boundary, b.boundaryNum)
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
