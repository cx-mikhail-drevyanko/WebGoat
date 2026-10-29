# WebGoat container perf test image
FROM redis:6.0-alpine AS stage0
ENV APP_ID=77509
LABEL variant="531559"
FROM node:20-alpine
RUN apk add --no-cache bind-tools busybox-extras bash wget libcurl sqlite openssh-client
RUN npm install minimist@1.2.0 lodash@4.17.4 axios@0.18.0
LABEL variant="43921"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
