# WebGoat container perf test image
FROM memcached:1.6-alpine AS stage0
RUN apk add --no-cache nano
ENV APP_ID=85755
LABEL variant="930511"
FROM postgres:14 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 procps jq openssl wget zlib1g libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="882298"
FROM debian:10-slim
RUN apt-get update && apt-get install -y --no-install-recommends jq git sqlite3 perl wget openssl vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=38710
LABEL variant="356140"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
