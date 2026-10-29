# WebGoat container perf test image
FROM php:7.4-apache AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends vim openssh-client ca-certificates dnsutils procps openssl sqlite3 nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=84957
LABEL variant="867871"
FROM python:3.9-alpine AS stage1
LABEL variant="154336"
FROM python:3.9-alpine
RUN pip install pillow==6.2.0
LABEL variant="459067"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
