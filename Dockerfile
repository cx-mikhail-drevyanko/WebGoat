# WebGoat container perf test image
FROM httpd:2.4.58-alpine AS stage0
RUN apk add --no-cache curl nano tar libcurl gzip ca-certificates zlib
ENV APP_ID=55220
LABEL variant="55170"
FROM node:18-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client git sqlite3 libcurl4 curl && rm -rf /var/lib/apt/lists/*
RUN npm install jquery@2.2.4 moment@2.19.0 handlebars@4.0.5
ENV APP_ID=78520
LABEL variant="92875"
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*
LABEL variant="586272"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
