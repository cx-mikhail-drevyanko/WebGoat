# WebGoat container perf test image
FROM ruby:3.0-alpine AS stage0
RUN apk add --no-cache zlib gzip
LABEL variant="10322"
FROM alpine:3.10 AS stage1
RUN apk add --no-cache nano wget openssl tzdata busybox-extras curl
ENV APP_ID=42747
LABEL variant="142647"
FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends gnupg wget libssl-dev zlib1g net-tools sqlite3 && rm -rf /var/lib/apt/lists/*
RUN pip install cryptography==2.3 django==2.2.0 pyyaml==5.1 numpy==1.16.0 sqlalchemy==1.2.0
ENV APP_ID=89004
LABEL variant="410611"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
