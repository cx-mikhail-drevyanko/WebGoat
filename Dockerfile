# WebGoat container perf test image
FROM nginx:1.24-alpine AS stage0
RUN apk add --no-cache ca-certificates expat
LABEL variant="484956"
FROM alpine:3.10 AS stage1
RUN apk add --no-cache openssh-client jq
ENV APP_ID=84198
LABEL variant="81951"
FROM node:16-alpine
RUN apk add --no-cache busybox-extras
RUN npm install minimist@1.2.0
ENV APP_ID=31711
LABEL variant="611516"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
