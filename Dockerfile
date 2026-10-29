# WebGoat container perf test image
FROM debian:bullseye AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 wget libxml2 dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="98264"
FROM node:20-alpine AS stage1
RUN apk add --no-cache jq bash busybox-extras libxml2 gzip openssl vim wget
RUN npm install lodash@4.17.4
LABEL variant="180206"
FROM fedora:34
RUN yum install -y git bind-utils sqlite unzip openssh-clients libxml2 curl && yum clean all
LABEL variant="426727"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
