# WebGoat container perf test image
FROM node:18-alpine AS stage0
RUN apk add --no-cache curl openssl
RUN npm install handlebars@4.0.5 moment@2.19.0 axios@0.18.0 request@2.88.0
ENV APP_ID=86970
LABEL variant="698023"
FROM haproxy:2.0 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends unzip libssl-dev nano git wget && rm -rf /var/lib/apt/lists/*
LABEL variant="852619"
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 wget unzip curl openssl dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="425406"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
