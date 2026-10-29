# WebGoat container perf test image
FROM ruby:3.0-alpine AS stage0
RUN apk add --no-cache vim tzdata busybox-extras zlib
LABEL variant="92857"
FROM node:20-alpine AS stage1
RUN apk add --no-cache expat curl zlib libxml2 tzdata openssl ca-certificates
RUN npm install express@4.16.0 moment@2.19.0 minimist@1.2.0 jquery@2.2.4
ENV APP_ID=25937
LABEL variant="979795"
FROM eclipse-temurin:21-jre
RUN apt-get update && apt-get install -y --no-install-recommends git sqlite3 perl && rm -rf /var/lib/apt/lists/*
LABEL variant="543132"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
