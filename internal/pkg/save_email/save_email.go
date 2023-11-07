package saveemail

type Saved struct {
	Name     string
	Location string
	ID       string
}

type SaveEmail interface {
	SaveEmail(email string) (*Saved, error)
}
