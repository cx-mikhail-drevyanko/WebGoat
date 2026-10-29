# WebGoat container perf test image
FROM node:14-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g libxml2 jq libssl-dev libcurl4 nano openssl && rm -rf /var/lib/apt/lists/*
RUN npm install lodash@4.17.4 axios@0.18.0 express@4.16.0
LABEL variant="169488"
FROM ubuntu:18.04
ENV APP_ID=7644
LABEL variant="965905"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
