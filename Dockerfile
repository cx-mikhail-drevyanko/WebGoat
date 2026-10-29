# WebGoat container perf test image
FROM node:16-alpine AS stage0
RUN apk add --no-cache expat bash busybox-extras git ca-certificates sqlite libcurl
RUN npm install express@4.16.0
ENV APP_ID=60909
LABEL variant="778277"
FROM centos:7 AS stage1
RUN yum install -y sqlite git openssl unzip openssh-clients vim-minimal libxml2 jq && yum clean all
LABEL variant="88818"
FROM haproxy:2.0
LABEL variant="798882"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
