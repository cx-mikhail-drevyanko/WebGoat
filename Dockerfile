# WebGoat container perf test image
FROM alpine:3.20 AS stage0
RUN apk add --no-cache git nano gzip jq tzdata sqlite
LABEL variant="78616"
FROM postgres:11-alpine AS stage1
RUN apk add --no-cache gzip
LABEL variant="940640"
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends vim openssl zlib1g libcurl4 git wget && rm -rf /var/lib/apt/lists/*
RUN npm install jquery@2.2.4 express@4.16.0 request@2.88.0 axios@0.18.0
ENV APP_ID=32229
LABEL variant="681958"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
