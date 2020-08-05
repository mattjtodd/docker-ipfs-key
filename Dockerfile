FROM golang:alpine as build

RUN apk add --no-cache git
RUN go get github.com/whyrusleeping/ipfs-key

ENTRYPOINT ["/go/bin/ipfs-key"]