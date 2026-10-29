# WebGoat container perf test image
FROM mariadb:10.3 AS stage0
LABEL variant="87265"
FROM node:20-alpine AS stage1
RUN apk add --no-cache libcurl nano ca-certificates git expat busybox-extras sqlite
RUN npm install jquery@2.2.4 lodash@4.17.4 minimist@1.2.0 moment@2.19.0
LABEL variant="248980"
FROM node:14-slim
ENV APP_ID=33505
LABEL variant="782756"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
