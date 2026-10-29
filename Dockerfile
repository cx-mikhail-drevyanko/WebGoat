# WebGoat container perf test image
FROM ruby:3.1-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils openssl jq zlib1g libssl-dev perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=16097
LABEL variant="703712"
FROM golang:1.18 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=26039
LABEL variant="718831"
FROM alpine:3.12
ENV APP_ID=24173
LABEL variant="475970"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
