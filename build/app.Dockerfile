# WebGoat container perf test image
FROM php:7.4-apache AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip wget nano sqlite3 net-tools zlib1g curl openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=22587
LABEL variant="527956"
FROM ruby:2.7-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 libssl-dev git libxml2 perl procps libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="411200"
FROM php:8.0-cli
RUN apt-get update && apt-get install -y --no-install-recommends wget perl nano && rm -rf /var/lib/apt/lists/*
LABEL variant="150559"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
