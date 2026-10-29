# WebGoat container perf test image
FROM php:7.4-apache AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends vim dnsutils libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="830332"
FROM busybox:1.31
RUN apk add --no-cache busybox-extras curl bash wget gzip
ENV APP_ID=26303
LABEL variant="888404"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
