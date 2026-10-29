# WebGoat container perf test image
FROM alpine:3.14 AS stage0
RUN apk add --no-cache sqlite gzip tzdata nano zlib
ENV APP_ID=22412
LABEL variant="476165"
FROM eclipse-temurin:11-jre AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends net-tools git zlib1g dnsutils nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=96142
LABEL variant="406405"
FROM memcached:1.5
RUN apt-get update && apt-get install -y --no-install-recommends jq unzip nano curl libxml2 git dnsutils libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="717073"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
