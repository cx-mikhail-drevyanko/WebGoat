# WebGoat container perf test image
FROM debian:12-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssl procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=65938
LABEL variant="20167"
FROM ubuntu:24.04 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends curl vim wget libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="190372"
FROM alpine:3.20
RUN apk add --no-cache git jq tar busybox-extras ca-certificates bind-tools
LABEL variant="132308"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
