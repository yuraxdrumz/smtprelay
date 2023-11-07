package saveemail

import "github.com/amalfra/maildir/v3"

type Maildir struct {
	*maildir.Maildir
}

func NewMailDir(md *maildir.Maildir) *Maildir {
	return &Maildir{md}
}

func (m *Maildir) SaveEmail(email string) (*Saved, error) {
	resp, err := m.Add(email)
	if err != nil {
		return nil, err
	}

	return &Saved{
		Name:     resp.Key(),
		Location: resp.Key(),
		ID:       resp.Key(),
	}, nil
}
