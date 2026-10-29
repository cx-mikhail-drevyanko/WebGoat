# WebGoat container perf test image
FROM ruby:3.1-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssl nano openssh-client sqlite3 ca-certificates libcurl4 curl unzip && rm -rf /var/lib/apt/lists/*
LABEL variant="300001"
FROM debian:10-slim AS stage1
LABEL variant="596034"
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="794815"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
