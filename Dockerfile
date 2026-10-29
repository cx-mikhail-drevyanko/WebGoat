# WebGoat container perf test image
FROM nginx:1.24-alpine AS stage0
RUN apk add --no-cache wget jq libxml2
LABEL variant="930531"
FROM ubuntu:24.04 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends curl vim unzip libssl-dev gnupg ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="87027"
FROM python:3.9-slim
RUN apt-get update && apt-get install -y --no-install-recommends gnupg zlib1g git libcurl4 unzip ca-certificates && rm -rf /var/lib/apt/lists/*
RUN pip install paramiko==2.4.0 pyyaml==5.1 requests==2.19.0
ENV APP_ID=28779
LABEL variant="477905"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
