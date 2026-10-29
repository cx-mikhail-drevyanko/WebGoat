# WebGoat container perf test image
FROM tomcat:9.0-jre11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps sqlite3 nano zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=54450
LABEL variant="768968"
FROM node:12-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssl dnsutils nano unzip ca-certificates sqlite3 git libxml2 && rm -rf /var/lib/apt/lists/*
RUN npm install request@2.88.0 handlebars@4.0.5 lodash@4.17.4 express@4.16.0
ENV APP_ID=25865
LABEL variant="722998"
FROM alpine:3.14
RUN apk add --no-cache zlib openssh-client openssl wget gzip ca-certificates
LABEL variant="159564"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
