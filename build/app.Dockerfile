# WebGoat container perf test image
FROM ruby:3.1-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 wget procps libxml2 sqlite3 unzip openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=43969
LABEL variant="428699"
FROM haproxy:2.6-alpine AS stage1
RUN apk add --no-cache openssh-client wget
LABEL variant="362443"
FROM alpine:3.12
RUN apk add --no-cache zlib wget busybox-extras
LABEL variant="604966"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
