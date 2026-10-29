# WebGoat container perf test image
FROM node:12-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends jq unzip nano procps libcurl4 && rm -rf /var/lib/apt/lists/*
RUN npm install handlebars@4.0.5
ENV APP_ID=74923
LABEL variant="318983"
FROM ruby:3.0-alpine AS stage1
RUN apk add --no-cache bind-tools ca-certificates gzip jq zlib curl
LABEL variant="266592"
FROM nginx:1.24-alpine
ENV APP_ID=63624
LABEL variant="49956"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
