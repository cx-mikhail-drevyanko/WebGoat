# WebGoat container perf test image
FROM mongo:6.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools curl libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="326472"
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=65785
LABEL variant="829962"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
