FROM alpine:3.4
MAINTAINER OKUMURA Takahiro <hfm.garden@gmail.com>

ENV STNS_VERSION v0.3-0

RUN apk add --no-cache --virtual .build-deps go git \
      && GOPATH=/go go get github.com/STNS/STNS \
      && cd /go/src/github.com/STNS/STNS \
      && git checkout refs/tags/$STNS_VERSION \
      && GOPATH=/go go build -v . \
      && mv STNS /usr/bin/stns \
      && apk del .build-deps \
      && rm -rf /go

COPY stns.conf /etc/stns/stns.conf

VOLUME ["/etc/stns"]

CMD ["stns"]

EXPOSE 1104
