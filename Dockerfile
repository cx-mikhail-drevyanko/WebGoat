# WebGoat container perf test image
FROM postgres:13-alpine AS stage0
RUN apk add --no-cache libcurl tzdata git openssl expat ca-certificates
ENV APP_ID=60036
LABEL variant="699774"
FROM caddy:2.7-alpine AS stage1
RUN apk add --no-cache sqlite gzip tar libcurl busybox-extras libxml2 openssl jq
ENV APP_ID=22602
LABEL variant="637686"
FROM postgres:12
RUN apt-get update && apt-get install -y --no-install-recommends wget perl net-tools dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="893023"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
