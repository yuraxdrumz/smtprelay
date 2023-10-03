package metrics

import (
	"github.com/prometheus/client_golang/prometheus"
)

type Metrics struct {
	Error *prometheus.CounterVec
}

const ()

func NewPrometheusMetrics(reg prometheus.Registerer) *Metrics {
	m := &Metrics{
		Error: prometheus.NewCounterVec(prometheus.CounterOpts{
			Name: "errors",
			Help: "Collects errors in execution",
		}, []string{"step"}),
	}
	reg.Register(m.Error)
	return m
}
