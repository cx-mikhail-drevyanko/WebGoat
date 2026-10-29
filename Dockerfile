# WebGoat container perf test image
FROM golang:1.16-alpine AS stage0
ENV APP_ID=95991
LABEL variant="228684"
FROM mariadb:10.6 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends gnupg wget openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="431566"
FROM debian:10-slim
RUN apt-get update && apt-get install -y --no-install-recommends procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=72641
LABEL variant="43318"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
