# WebGoat container perf test image
FROM alpine:3.10 AS stage0
LABEL variant="660386"
FROM haproxy:2.6-alpine AS stage1
RUN apk add --no-cache tar zlib curl libxml2 sqlite bind-tools openssl
ENV APP_ID=78328
LABEL variant="436216"
FROM busybox:1.31
RUN apk add --no-cache jq sqlite bash
ENV APP_ID=10916
LABEL variant="343025"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
