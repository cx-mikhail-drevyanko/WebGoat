# WebGoat container perf test image
FROM mariadb:10.3 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=95276
LABEL variant="748026"
FROM node:20-alpine AS stage1
RUN apk add --no-cache tzdata
RUN npm install axios@0.18.0 lodash@4.17.4 request@2.88.0
LABEL variant="36437"
FROM node:18-alpine
RUN npm install express@4.16.0 minimist@1.2.0 handlebars@4.0.5 moment@2.19.0
LABEL variant="398577"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
