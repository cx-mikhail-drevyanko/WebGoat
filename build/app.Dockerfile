# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN apk add --no-cache curl tzdata git nano ca-certificates gzip zlib
RUN pip install sqlalchemy==1.2.0 pillow==6.2.0 requests==2.19.0 django==2.2.0
LABEL variant="952852"
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends gnupg libcurl4 openssh-client vim jq unzip openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="216053"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
