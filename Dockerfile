# WebGoat container perf test image
FROM golang:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools dnsutils gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="923221"
FROM golang:1.20-alpine AS stage1
RUN apk add --no-cache gzip tzdata zlib bash
LABEL variant="981933"
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache nano tar openssl curl busybox-extras libcurl bind-tools wget
ENV APP_ID=54973
LABEL variant="840287"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
