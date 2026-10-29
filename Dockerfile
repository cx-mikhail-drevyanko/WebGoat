# WebGoat container perf test image
FROM node:12-slim AS stage0
LABEL variant="633190"
FROM centos:8 AS stage1
RUN yum install -y vim-minimal gzip && yum clean all
LABEL variant="605370"
FROM golang:1.16-alpine
RUN apk add --no-cache nano wget ca-certificates libcurl
ENV APP_ID=39849
LABEL variant="516612"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
