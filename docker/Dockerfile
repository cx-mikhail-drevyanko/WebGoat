# WebGoat container perf test image
FROM alpine:3.10 AS stage0
ENV APP_ID=45153
LABEL variant="131326"
FROM php:7.4-apache AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils wget net-tools ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="681110"
FROM haproxy:2.0
LABEL variant="676427"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
