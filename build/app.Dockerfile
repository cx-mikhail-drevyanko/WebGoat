# WebGoat container perf test image
FROM node:18-alpine AS stage0
RUN apk add --no-cache zlib jq curl bind-tools wget expat
RUN npm install minimist@1.2.0 axios@0.18.0 jquery@2.2.4
LABEL variant="476668"
FROM traefik:v2.10 AS stage1
ENV APP_ID=38701
LABEL variant="485445"
FROM httpd:2.4.58-alpine
LABEL variant="925625"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
