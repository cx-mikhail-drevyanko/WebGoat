# WebGoat container perf test image
FROM ubuntu:16.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools wget && rm -rf /var/lib/apt/lists/*
LABEL variant="133361"
FROM debian:12-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="826649"
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache tar bash openssl tzdata gzip busybox-extras nano
ENV APP_ID=45853
LABEL variant="514997"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
