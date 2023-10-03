package processors

import "strings"

type BodyProcessor interface {
	Process(lineString string, didReachBoundary bool, boundary string) (didProcess bool, links []string)
}

type bodyProcessors struct {
	bodyProcessors []BodyProcessor
	boundary       string
	links          []string
}

func NewBodyProcessors(processors ...BodyProcessor) *bodyProcessors {
	return &bodyProcessors{
		bodyProcessors: processors,
		boundary:       "",
	}
}

func (b *bodyProcessors) ProcessBody(line string) (links []string) {
	boundaryStart := strings.HasPrefix(line, "--")
	if boundaryStart && b.boundary == "" {
		b.boundary = line
	}
	return b.processOneOf(line, boundaryStart, b.boundary)
}

func (b *bodyProcessors) processOneOf(line string, boundaryStart bool, boundary string) (links []string) {
	for _, p := range b.bodyProcessors {
		didProcess, links := p.Process(line, boundaryStart, boundary)
		if didProcess {
			return links
		}
	}
	return nil
}
