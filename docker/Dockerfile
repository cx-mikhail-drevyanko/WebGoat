# WebGoat container perf test image
FROM ubuntu:16.04 AS stage0
ENV APP_ID=7290
LABEL variant="312706"
FROM alpine:3.12 AS stage1
RUN apk add --no-cache bash libcurl tar tzdata openssh-client libxml2 curl
ENV APP_ID=20712
LABEL variant="567842"
FROM rabbitmq:3.11
RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/*
LABEL variant="541170"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
