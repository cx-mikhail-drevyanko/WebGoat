# WebGoat container perf test image
FROM rabbitmq:3.8-alpine AS stage0
RUN apk add --no-cache tzdata sqlite git openssl expat tar vim
ENV APP_ID=23140
LABEL variant="805030"
FROM centos:8 AS stage1
RUN yum install -y sqlite unzip vim-minimal gzip openssh-clients zlib jq && yum clean all
LABEL variant="471040"
FROM caddy:2.7-alpine
ENV APP_ID=39453
LABEL variant="544536"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
