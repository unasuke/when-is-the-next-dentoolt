FROM golang:1.8.3-alpine3.6 AS build

WORKDIR /go/src/app
RUN apk --update add --no-cache git
RUN go get -u github.com/kardianos/govendor
COPY golang/gin/vendor/vendor.json /go/src/app/vendor/vendor.json
RUN govendor sync
COPY golang/gin/main.go /go/src/app/
RUN go build

#####################################

FROM alpine:3.6

ENV GIN_MODE=release
COPY --from=build /go/src/app/app /usr/local/bin/app
CMD app
