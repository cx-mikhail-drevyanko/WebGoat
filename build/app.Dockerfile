# WebGoat container perf test image
FROM python:3.11-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools procps git jq sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=90662
LABEL variant="489527"
FROM postgres:13-alpine AS stage1
RUN apk add --no-cache libxml2 nano wget bind-tools expat openssl vim git
ENV APP_ID=38110
LABEL variant="689508"
FROM traefik:v2.10
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 jq gnupg zlib1g dnsutils net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=77691
LABEL variant="312630"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
