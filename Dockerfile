FROM golang:1.20 as builder

WORKDIR /build/smtp-relay
COPY . .
RUN CGO_ENABLED=0 go build -o /build/smtp-relay/smtp-relay -v .

##########################
FROM alpine:3.15
COPY --from=builder /build/smtp-relay/smtp-relay ./bin/smtp-relay
EXPOSE 25
WORKDIR /bin
CMD "smtp-relay"