# smtprelay

## Mime Issues

https://github.com/Supme/smtpSender/blob/master/builder.go

## Open Issues

[ ] - body is accumulated in memory
[X] - `Content-Transfer-Encoding: base64` needs accumulating until next boundary
[X] - Dont replace emails
[ ] - forwarding should be handled as passthrough, after seeing, from, to and subject, we can start checking urls

[ ] - Attachments names get rewritten
[ ] - Images srcs in outlook get cid referenced from attachments
[ ] - Sections are written without their headers