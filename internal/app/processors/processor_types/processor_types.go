package processortypes

type ContentType string
type ContentTransferEncoding string

const (
	DefaultContentType ContentType = "default"
	TextPlain          ContentType = "Content-Type: text/plain"
	TextHTML           ContentType = "Content-Type: text/html"
	Image              ContentType = "Content-Type: image"
	MultiPart          ContentType = "Content-Type: multipart"
)

const (
	Default         ContentTransferEncoding = "default"
	Base64          ContentTransferEncoding = "Content-Transfer-Encoding: base64"
	Quotedprintable ContentTransferEncoding = "Content-Transfer-Encoding: quoted-printable"
)

type Section struct {
	Name                    string
	Headers                 string
	ContentType             ContentType
	ContentTransferEncoding ContentTransferEncoding
	Charset                 string
	Data                    string
}
