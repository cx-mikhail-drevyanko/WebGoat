# WebGoat container perf test image
FROM debian:11-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssl curl git sqlite3 vim jq && rm -rf /var/lib/apt/lists/*
LABEL variant="558007"
FROM php:7.4-apache AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="449676"
FROM amazonlinux:2
RUN yum install -y wget unzip tar git gzip && yum clean all
LABEL variant="104761"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
