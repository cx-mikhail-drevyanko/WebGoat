# WebGoat container perf test image
FROM php:8.0-cli AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends vim curl nano perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=45833
LABEL variant="835938"
FROM alpine:3.12 AS stage1
RUN apk add --no-cache openssl jq vim
ENV APP_ID=86298
LABEL variant="85160"
FROM busybox:1.31
RUN apk add --no-cache openssl libxml2 vim bash libcurl bind-tools
LABEL variant="829950"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
