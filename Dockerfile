# WebGoat container perf test image
FROM nginx:1.20-alpine AS stage0
RUN apk add --no-cache curl libxml2 libcurl
ENV APP_ID=53981
LABEL variant="168244"
FROM alpine:3.20 AS stage1
RUN apk add --no-cache tzdata bind-tools ca-certificates curl gzip
LABEL variant="275174"
FROM golang:1.18
RUN apt-get update && apt-get install -y --no-install-recommends net-tools unzip vim libcurl4 openssl curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=16159
LABEL variant="612975"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
