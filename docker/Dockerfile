# WebGoat container perf test image
FROM php:8.1-fpm-alpine AS stage0
RUN apk add --no-cache libcurl tar curl expat
ENV APP_ID=97253
LABEL variant="678376"
FROM node:14-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends unzip vim procps net-tools jq libssl-dev gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=65619
LABEL variant="949800"
FROM python:3.9-alpine
RUN apk add --no-cache bash git
RUN pip install pyyaml==5.1 numpy==1.16.0 sqlalchemy==1.2.0
ENV APP_ID=13075
LABEL variant="883366"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
