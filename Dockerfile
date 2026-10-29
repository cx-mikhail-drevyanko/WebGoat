# WebGoat container perf test image
FROM caddy:2.7-alpine AS stage0
RUN apk add --no-cache bash curl openssh-client libcurl zlib bind-tools ca-certificates tar
LABEL variant="643955"
FROM elasticsearch:7.17.9 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends wget libssl-dev zlib1g openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="259622"
FROM ruby:3.0-alpine
ENV APP_ID=12413
LABEL variant="866809"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
