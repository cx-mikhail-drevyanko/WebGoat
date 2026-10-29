# WebGoat container perf test image
FROM haproxy:2.0 AS stage0
ENV APP_ID=53893
LABEL variant="739363"
FROM php:8.0-cli AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends net-tools unzip procps ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=73209
LABEL variant="689168"
FROM golang:1.20-alpine
RUN apk add --no-cache gzip git
LABEL variant="480771"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
