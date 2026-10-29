# WebGoat container perf test image
FROM node:20-alpine AS stage0
RUN apk add --no-cache libcurl gzip git bind-tools libxml2 zlib jq
ENV APP_ID=26864
LABEL variant="786954"
FROM golang:1.18 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils procps sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=78221
LABEL variant="55645"
FROM centos:8
RUN yum install -y vim-minimal zlib bind-utils openssl libxml2 openssh-clients && yum clean all
ENV APP_ID=7012
LABEL variant="186108"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
