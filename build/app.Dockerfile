# WebGoat container perf test image
FROM php:7.4-apache AS stage0
ENV APP_ID=92302
LABEL variant="701617"
FROM node:12-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 git libxml2 && rm -rf /var/lib/apt/lists/*
RUN npm install axios@0.18.0
LABEL variant="410925"
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates openssl gnupg openssh-client libssl-dev procps sqlite3 && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0 minimist@1.2.0 handlebars@4.0.5 axios@0.18.0
LABEL variant="943691"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
