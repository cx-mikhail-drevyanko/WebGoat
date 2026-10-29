# WebGoat container perf test image
FROM debian:bullseye AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl nano unzip jq openssl libssl-dev libxml2 zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="587309"
FROM debian:buster AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="597303"
FROM python:3.9-slim
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="843873"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
