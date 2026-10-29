# WebGoat container perf test image
FROM alpine:3.10 AS stage0
RUN apk add --no-cache bind-tools curl
ENV APP_ID=29771
LABEL variant="238062"
FROM mongo:4.4 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends gnupg perl openssh-client curl sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=41504
LABEL variant="116254"
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="723373"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
