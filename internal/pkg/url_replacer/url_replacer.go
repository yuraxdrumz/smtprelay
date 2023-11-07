package urlreplacer

type UrlReplacerActions interface {
	Replace(str string) (replaced string, links []string, err error)
}
