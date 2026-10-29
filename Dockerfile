# WebGoat container perf test image
FROM mariadb:10.3 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl dnsutils ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=66962
LABEL variant="158151"
FROM redis:6.2 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates procps openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=46066
LABEL variant="823705"
FROM golang:1.16-alpine
RUN apk add --no-cache sqlite jq libcurl libxml2 tzdata zlib
ENV APP_ID=98069
LABEL variant="31556"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
