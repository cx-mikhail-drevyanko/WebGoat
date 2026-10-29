# WebGoat container perf test image
FROM python:3.11-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends curl jq openssl vim unzip ca-certificates wget sqlite3 && rm -rf /var/lib/apt/lists/*
RUN pip install paramiko==2.4.0 cryptography==2.3 urllib3==1.24
LABEL variant="550258"
FROM node:20-alpine AS stage1
RUN apk add --no-cache jq openssh-client libxml2 wget git
ENV APP_ID=73646
LABEL variant="965466"
FROM golang:1.20-alpine
RUN apk add --no-cache expat bind-tools jq libcurl zlib nano openssh-client wget
LABEL variant="587148"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
