# WebGoat container perf test image
FROM debian:9-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils git && rm -rf /var/lib/apt/lists/*
LABEL variant="919571"
FROM caddy:2.7-alpine AS stage1
RUN apk add --no-cache bind-tools wget tzdata busybox-extras curl bash
LABEL variant="376988"
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends wget git sqlite3 libssl-dev openssh-client ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=23868
LABEL variant="977910"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
