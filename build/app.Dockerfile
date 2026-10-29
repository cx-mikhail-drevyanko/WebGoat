# WebGoat container perf test image
FROM amazonlinux:2 AS stage0
RUN yum install -y openssl bind-utils git openssh-clients jq && yum clean all
ENV APP_ID=39015
LABEL variant="414595"
FROM centos:7 AS stage1
RUN yum install -y sqlite zlib gzip && yum clean all
LABEL variant="371881"
FROM php:8.1-fpm-alpine
RUN apk add --no-cache tar sqlite expat gzip bind-tools openssl
ENV APP_ID=1809
LABEL variant="946320"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
