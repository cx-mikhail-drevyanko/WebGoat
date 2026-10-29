# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN apk add --no-cache nano openssl sqlite wget tzdata
LABEL variant="918813"
FROM mysql:8.0 AS stage1
LABEL variant="785155"
FROM amazonlinux:2
RUN yum install -y git tar unzip jq openssh-clients vim-minimal && yum clean all
ENV APP_ID=61385
LABEL variant="486698"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
