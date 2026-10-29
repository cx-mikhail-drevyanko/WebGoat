# WebGoat container perf test image
FROM ubuntu:24.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client jq nano sqlite3 unzip libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="479769"
FROM alpine:3.12 AS stage1
RUN apk add --no-cache tzdata sqlite bash openssl zlib vim nano tar
ENV APP_ID=91106
LABEL variant="353701"
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=86398
LABEL variant="664741"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
