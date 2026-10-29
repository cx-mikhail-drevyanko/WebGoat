# WebGoat container perf test image
FROM debian:bullseye AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client curl procps openssl ca-certificates wget && rm -rf /var/lib/apt/lists/*
ENV APP_ID=25256
LABEL variant="552501"
FROM tomcat:8.5-jre8 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends jq net-tools openssh-client sqlite3 git nano dnsutils vim && rm -rf /var/lib/apt/lists/*
LABEL variant="98191"
FROM golang:1.16-alpine
RUN apk add --no-cache sqlite nano libxml2 bind-tools
ENV APP_ID=87686
LABEL variant="251876"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
