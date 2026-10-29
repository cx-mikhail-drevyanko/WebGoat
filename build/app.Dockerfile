# WebGoat container perf test image
FROM debian:12-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client perl ca-certificates git jq zlib1g wget libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="6726"
FROM node:12-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends git openssl libxml2 zlib1g procps gnupg && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0 axios@0.18.0 request@2.88.0
ENV APP_ID=11287
LABEL variant="762518"
FROM golang:1.16-alpine
RUN apk add --no-cache jq busybox-extras vim ca-certificates tzdata bash libxml2 zlib
LABEL variant="424437"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
