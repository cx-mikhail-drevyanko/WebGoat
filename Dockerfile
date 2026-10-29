# WebGoat container perf test image
FROM ubuntu:18.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=59035
LABEL variant="942502"
FROM node:18-alpine AS stage1
RUN apk add --no-cache zlib tzdata bind-tools wget nano vim
RUN npm install lodash@4.17.4 handlebars@4.0.5 axios@0.18.0
LABEL variant="856334"
FROM caddy:2.7-alpine
ENV APP_ID=45374
LABEL variant="896416"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
