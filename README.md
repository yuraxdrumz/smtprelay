# smtprelay

## Mime Issues

https://github.com/Supme/smtpSender/blob/master/builder.go

## Open Issues

[-] - body is accumulated in memory

[X] - `Content-Transfer-Encoding: base64` needs accumulating until next boundary

[X] - Dont replace emails

[-] - forwarding should be handled as passthrough, after seeing, from, to and subject, we can start checking urls

[X] - Attachments names get rewritten

[X] - Images srcs in outlook get cid referenced from attachments

[X] - Sections are written without their headers

[X] - Add html parser to replace hrefs

[X] - handle content type text/html in a more generic way

[X] - ignore replacing links in base64 when content type is not text

[-] - handle encodings
