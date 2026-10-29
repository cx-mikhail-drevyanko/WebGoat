# WebGoat container perf test image
FROM php:8.1-fpm-alpine AS stage0
ENV APP_ID=33682
LABEL variant="159885"
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y --no-install-recommends wget openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=79384
LABEL variant="777453"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
