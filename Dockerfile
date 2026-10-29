# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN apk add --no-cache zlib wget nano curl vim
RUN pip install cryptography==2.3 pyyaml==5.1 jinja2==2.10 lxml==4.2.0
ENV APP_ID=25365
LABEL variant="45479"
FROM amazonlinux:2 AS stage1
RUN yum install -y sqlite openssh-clients curl vim-minimal libxml2 tar && yum clean all
LABEL variant="559478"
FROM debian:buster
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=29307
LABEL variant="31223"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
