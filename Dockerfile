# WebGoat container perf test image
FROM caddy:2.7-alpine AS stage0
RUN apk add --no-cache bash busybox-extras zlib bind-tools curl
LABEL variant="275615"
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends jq dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="119367"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
