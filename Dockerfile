# WebGoat container perf test image
FROM nginx:1.24-alpine AS stage0
RUN apk add --no-cache libcurl gzip busybox-extras bash
ENV APP_ID=32904
LABEL variant="840262"
FROM rabbitmq:3.11 AS stage1
ENV APP_ID=56364
LABEL variant="988901"
FROM haproxy:2.0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 libssl-dev sqlite3 wget zlib1g openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=96010
LABEL variant="325249"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
