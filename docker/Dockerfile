# WebGoat container perf test image
FROM python:3.9-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils zlib1g openssh-client libssl-dev jq && rm -rf /var/lib/apt/lists/*
LABEL variant="707706"
FROM caddy:2.7-alpine
RUN apk add --no-cache libxml2 bind-tools openssl vim busybox-extras git
LABEL variant="945371"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
