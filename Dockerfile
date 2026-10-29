# WebGoat container perf test image
FROM elasticsearch:7.17.9 AS stage0
LABEL variant="389394"
FROM php:7.4-apache AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev zlib1g nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=18574
LABEL variant="750887"
FROM busybox:1.36
RUN apk add --no-cache tzdata
LABEL variant="84232"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
