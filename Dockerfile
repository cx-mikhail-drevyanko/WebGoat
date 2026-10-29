# WebGoat container perf test image
FROM ruby:3.0-alpine AS stage0
RUN apk add --no-cache ca-certificates openssh-client nano zlib
ENV APP_ID=13926
LABEL variant="639363"
FROM elasticsearch:7.17.9 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=68165
LABEL variant="249789"
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates zlib1g libssl-dev openssl dnsutils perl libcurl4 curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=90345
LABEL variant="880283"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
