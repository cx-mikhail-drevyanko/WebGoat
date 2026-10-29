# WebGoat container perf test image
FROM php:8.0-cli AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils curl jq unzip perl gnupg zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="183731"
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends perl curl net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="267251"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
