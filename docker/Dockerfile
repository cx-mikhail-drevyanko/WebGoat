# WebGoat container perf test image
FROM python:3.7-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates procps curl git unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=63315
LABEL variant="810278"
FROM node:20-alpine AS stage1
RUN apk add --no-cache bind-tools sqlite openssl nano zlib gzip wget git
RUN npm install express@4.16.0
LABEL variant="751967"
FROM debian:9-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 procps openssl vim libssl-dev perl openssh-client ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=36448
LABEL variant="849438"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
