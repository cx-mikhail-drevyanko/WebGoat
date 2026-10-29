# WebGoat container perf test image
FROM node:18-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils sqlite3 ca-certificates zlib1g libxml2 && rm -rf /var/lib/apt/lists/*
RUN npm install request@2.88.0 jquery@2.2.4 axios@0.18.0
ENV APP_ID=80634
LABEL variant="893090"
FROM fedora:34 AS stage1
RUN yum install -y openssh-clients bind-utils curl sqlite unzip && yum clean all
ENV APP_ID=85860
LABEL variant="263101"
FROM alpine:3.10
RUN apk add --no-cache wget
ENV APP_ID=65265
LABEL variant="983995"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
