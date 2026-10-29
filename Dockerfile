# WebGoat container perf test image
FROM alpine:3.12 AS stage0
RUN apk add --no-cache sqlite
LABEL variant="287651"
FROM ubuntu:22.04 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends procps libxml2 wget jq libcurl4 dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=83119
LABEL variant="674223"
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 jq ca-certificates git net-tools dnsutils openssl sqlite3 && rm -rf /var/lib/apt/lists/*
RUN pip install flask==1.0 pyyaml==5.1 requests==2.19.0 django==2.2.0 pillow==6.2.0
LABEL variant="327898"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
