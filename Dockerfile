# WebGoat container perf test image
FROM postgres:14 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools libxml2 procps gnupg wget unzip zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="29351"
FROM nginx:1.20-alpine AS stage1
RUN apk add --no-cache openssl curl libcurl busybox-extras sqlite tar expat ca-certificates
ENV APP_ID=81147
LABEL variant="821722"
FROM ubuntu:20.04
ENV APP_ID=59878
LABEL variant="607216"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
