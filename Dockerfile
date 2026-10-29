# WebGoat container perf test image
FROM rabbitmq:3.11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=54181
LABEL variant="730203"
FROM memcached:1.6-alpine AS stage1
RUN apk add --no-cache sqlite nano ca-certificates libcurl libxml2 openssl
LABEL variant="343740"
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends net-tools vim && rm -rf /var/lib/apt/lists/*
LABEL variant="444348"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
