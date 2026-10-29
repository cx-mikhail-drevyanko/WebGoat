# WebGoat container perf test image
FROM golang:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssl libxml2 curl openssh-client zlib1g libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="528637"
FROM rabbitmq:3.8-alpine AS stage1
RUN apk add --no-cache ca-certificates libxml2 git
ENV APP_ID=3179
LABEL variant="622993"
FROM node:16-alpine
RUN apk add --no-cache tzdata nano vim jq busybox-extras openssl libxml2 openssh-client
RUN npm install jquery@2.2.4 moment@2.19.0 request@2.88.0 express@4.16.0
LABEL variant="328474"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
