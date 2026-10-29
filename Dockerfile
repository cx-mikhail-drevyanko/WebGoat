# WebGoat container perf test image
FROM traefik:v2.10 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends nano openssl procps gnupg perl openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="937690"
FROM httpd:2.4.46 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends wget perl unzip sqlite3 net-tools ca-certificates jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=87927
LABEL variant="825090"
FROM ruby:3.0-alpine
RUN apk add --no-cache git openssh-client libcurl busybox-extras jq libxml2
LABEL variant="186508"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
