# WebGoat container perf test image
FROM haproxy:2.6-alpine AS stage0
RUN apk add --no-cache libcurl gzip nano vim jq bash expat
LABEL variant="741700"
FROM centos:7 AS stage1
RUN yum install -y bind-utils && yum clean all
ENV APP_ID=66559
LABEL variant="454945"
FROM golang:1.16-alpine
RUN apk add --no-cache sqlite jq expat tzdata busybox-extras wget
ENV APP_ID=7389
LABEL variant="992396"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
