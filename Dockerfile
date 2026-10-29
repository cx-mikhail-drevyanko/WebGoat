# WebGoat container perf test image
FROM php:8.0-cli AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools git nano vim && rm -rf /var/lib/apt/lists/*
LABEL variant="424445"
FROM alpine:3.20 AS stage1
RUN apk add --no-cache tar git busybox-extras openssl
ENV APP_ID=27882
LABEL variant="585218"
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends git zlib1g net-tools dnsutils ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=50576
LABEL variant="680636"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
