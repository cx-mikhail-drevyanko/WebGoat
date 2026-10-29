# WebGoat container perf test image
FROM postgres:11-alpine AS stage0
RUN apk add --no-cache gzip openssh-client libcurl curl tar
LABEL variant="238752"
FROM ubuntu:16.04 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=57615
LABEL variant="959213"
FROM php:8.1-fpm-alpine
RUN apk add --no-cache openssl zlib busybox-extras ca-certificates
ENV APP_ID=59795
LABEL variant="384558"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
