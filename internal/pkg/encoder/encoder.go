package encoder

type Encoder interface {
	Encode(str string, key string) (string, error)
}
