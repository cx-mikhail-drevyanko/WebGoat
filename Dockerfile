# WebGoat container perf test image
FROM httpd:2.4.58-alpine AS stage0
RUN apk add --no-cache wget bash
ENV APP_ID=17155
LABEL variant="50330"
FROM tomcat:10.1-jre17 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends jq procps gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="545799"
FROM node:20-alpine
RUN apk add --no-cache git libxml2 bash
RUN npm install lodash@4.17.4 express@4.16.0
ENV APP_ID=92636
LABEL variant="168883"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
