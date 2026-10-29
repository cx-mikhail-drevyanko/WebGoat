# WebGoat container perf test image
FROM php:7.4-apache AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=56077
LABEL variant="90990"
FROM postgres:12 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 ca-certificates libcurl4 jq && rm -rf /var/lib/apt/lists/*
LABEL variant="198755"
FROM amazonlinux:2
ENV APP_ID=80587
LABEL variant="119612"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
