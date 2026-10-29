# WebGoat container perf test image
FROM debian:bullseye AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 git openssh-client nano net-tools sqlite3 libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=18998
LABEL variant="311786"
FROM node:14-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends perl ca-certificates net-tools jq libxml2 gnupg procps libcurl4 && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0
ENV APP_ID=66347
LABEL variant="454881"
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=42276
LABEL variant="971968"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
