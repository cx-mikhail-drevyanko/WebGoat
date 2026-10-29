# WebGoat container perf test image
FROM alpine:3.20 AS stage0
RUN apk add --no-cache busybox-extras git wget libcurl openssl jq nano
LABEL variant="976235"
FROM httpd:2.4.46 AS stage1
LABEL variant="145386"
FROM alpine:3.20
RUN apk add --no-cache tzdata libcurl ca-certificates
LABEL variant="813092"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
