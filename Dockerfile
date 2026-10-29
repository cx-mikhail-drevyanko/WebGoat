# WebGoat container perf test image
FROM alpine:3.14 AS stage0
RUN apk add --no-cache bind-tools busybox-extras tzdata wget
ENV APP_ID=70186
LABEL variant="149796"
FROM python:3.7-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends curl git openssl gnupg sqlite3 openssh-client wget && rm -rf /var/lib/apt/lists/*
RUN pip install lxml==4.2.0 numpy==1.16.0 pillow==6.2.0
LABEL variant="833685"
FROM caddy:2.7-alpine
LABEL variant="427438"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
