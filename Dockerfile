FROM alpine:latest

LABEL maintainer="support@opensvc.com"

RUN apk --update add --no-cache pdns pdns-backend-remote pdns-backend-mysql

EXPOSE 5553/udp 5553/tcp

ENTRYPOINT ["/usr/sbin/pdns_server"]
