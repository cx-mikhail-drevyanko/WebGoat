# WebGoat container perf test image
FROM php:8.0-cli AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 dnsutils jq curl && rm -rf /var/lib/apt/lists/*
LABEL variant="869408"
FROM debian:9-slim
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dnsutils libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=20808
LABEL variant="850611"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
