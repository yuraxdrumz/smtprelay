package contenttype

type ContentTypeActions interface {
	Parse(data string) (string, []string, error)
}
