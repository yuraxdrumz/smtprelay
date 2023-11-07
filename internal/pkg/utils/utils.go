package utils

import (
	"errors"
	"strings"
)

// Split a string and ignore empty results
// https://stackoverflow.com/a/46798310/119527
func Splitstr(s string, sep rune) []string {
	return strings.FieldsFunc(s, func(c rune) bool { return c == sep })
}

type ProtoAddr struct {
	Protocol string
	Address  string
}

func SplitProto(s string) ProtoAddr {
	idx := strings.Index(s, "://")
	if idx == -1 {
		return ProtoAddr{
			Address: s,
		}
	}
	return ProtoAddr{
		Protocol: s[0:idx],
		Address:  s[idx+3:],
	}
}

// validateLine checks to see if a line has CR or LF as per RFC 5321
func ValidateLine(line string) error {
	if strings.ContainsAny(line, "\n\r") {
		return errors.New("smtp: A line must not contain CR or LF")
	}
	return nil
}
