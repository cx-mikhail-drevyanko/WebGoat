# WebGoat container perf test image
FROM node:16-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g openssl curl git wget unzip libxml2 ca-certificates && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0
LABEL variant="901459"
FROM python:3.12-alpine AS stage1
RUN apk add --no-cache tzdata openssh-client vim libcurl bash wget ca-certificates tar
LABEL variant="760165"
FROM postgres:11-alpine
RUN apk add --no-cache jq expat git vim ca-certificates curl sqlite
LABEL variant="962994"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
