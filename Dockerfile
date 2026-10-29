# WebGoat container perf test image
FROM ruby:3.0-alpine AS stage0
RUN apk add --no-cache expat openssl
LABEL variant="401325"
FROM mariadb:10.6 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssl openssh-client net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="643659"
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends jq nano libssl-dev wget && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0
LABEL variant="571421"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
