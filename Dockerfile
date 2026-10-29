# WebGoat container perf test image
FROM ruby:3.1-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends vim perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=85295
LABEL variant="492104"
FROM debian:bullseye AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends curl vim openssl git && rm -rf /var/lib/apt/lists/*
LABEL variant="372797"
FROM node:18-alpine
RUN npm install express@4.16.0 request@2.88.0 minimist@1.2.0
ENV APP_ID=95033
LABEL variant="217035"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
