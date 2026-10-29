# WebGoat container perf test image
FROM rabbitmq:3.11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends curl wget dnsutils jq net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="928025"
FROM python:3.9-alpine AS stage1
RUN apk add --no-cache tzdata libxml2
LABEL variant="791880"
FROM node:16-alpine
RUN apk add --no-cache gzip expat sqlite busybox-extras git
RUN npm install jquery@2.2.4 express@4.16.0 lodash@4.17.4 moment@2.19.0
LABEL variant="929487"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
