# WebGoat container perf test image
FROM ubuntu:22.04 AS stage0
ENV APP_ID=48747
LABEL variant="260816"
FROM debian:9-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends git openssl libxml2 zlib1g procps libssl-dev sqlite3 perl && rm -rf /var/lib/apt/lists/*
LABEL variant="604824"
FROM amazonlinux:2
LABEL variant="185344"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
