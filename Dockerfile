# WebGoat container perf test image
FROM alpine:3.16 AS stage0
RUN apk add --no-cache busybox-extras openssl gzip sqlite tar openssh-client
ENV APP_ID=57289
LABEL variant="265495"
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends vim wget procps perl unzip ca-certificates gnupg && rm -rf /var/lib/apt/lists/*
RUN npm install lodash@4.17.4 jquery@2.2.4 minimist@1.2.0
ENV APP_ID=13492
LABEL variant="627375"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
