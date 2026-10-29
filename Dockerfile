# WebGoat container perf test image
FROM ruby:3.0-alpine AS stage0
RUN apk add --no-cache openssl ca-certificates gzip tzdata tar libxml2
LABEL variant="395978"
FROM python:3.9-alpine AS stage1
RUN apk add --no-cache libcurl bash vim ca-certificates libxml2 openssl
RUN pip install pillow==6.2.0 django==2.2.0 sqlalchemy==1.2.0 pyyaml==5.1 numpy==1.16.0
ENV APP_ID=40955
LABEL variant="427816"
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends wget libxml2 net-tools vim openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="844634"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
