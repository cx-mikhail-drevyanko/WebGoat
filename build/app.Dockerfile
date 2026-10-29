# WebGoat container perf test image
FROM alpine:3.20 AS stage0
RUN apk add --no-cache jq ca-certificates curl
LABEL variant="207431"
FROM caddy:2.7-alpine
RUN apk add --no-cache jq tzdata bind-tools nano ca-certificates gzip vim
LABEL variant="145391"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
