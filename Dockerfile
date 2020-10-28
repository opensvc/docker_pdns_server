FROM alpine:edge

LABEL maintainer="support@opensvc.com"

RUN apk --update add --no-cache pdns=4.3.1-r0 pdns-backend-remote pdns-backend-mysql

EXPOSE 5553/udp 5553/tcp

ENTRYPOINT ["/usr/sbin/pdns_server"]
