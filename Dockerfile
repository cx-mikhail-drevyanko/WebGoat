# WebGoat container perf test image
FROM mariadb:10.3 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git vim procps sqlite3 openssh-client net-tools openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=49239
LABEL variant="912969"
FROM node:12-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends wget nano curl net-tools libxml2 vim zlib1g libcurl4 && rm -rf /var/lib/apt/lists/*
RUN npm install moment@2.19.0
LABEL variant="938035"
FROM busybox:1.36
RUN apk add --no-cache git libxml2 bash
LABEL variant="309870"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
