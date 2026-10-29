# WebGoat container perf test image
FROM nginx:1.22 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip perl && rm -rf /var/lib/apt/lists/*
LABEL variant="391247"
FROM golang:1.16-alpine AS stage1
ENV APP_ID=22918
LABEL variant="801661"
FROM php:8.1-fpm-alpine
RUN apk add --no-cache curl libcurl ca-certificates tar tzdata openssl sqlite
LABEL variant="305539"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
