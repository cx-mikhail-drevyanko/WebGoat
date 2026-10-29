# WebGoat container perf test image
FROM fedora:34 AS stage0
LABEL variant="562542"
FROM tomcat:8.5-jre8 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends jq libcurl4 procps libssl-dev gnupg unzip dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=57450
LABEL variant="123191"
FROM php:8.0-cli
RUN apt-get update && apt-get install -y --no-install-recommends perl wget libssl-dev libxml2 zlib1g vim unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=4173
LABEL variant="107158"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
