# WebGoat container perf test image
FROM traefik:v2.10 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends nano perl curl procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=76954
LABEL variant="673292"
FROM busybox:1.31 AS stage1
RUN apk add --no-cache openssl bind-tools
LABEL variant="341832"
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends jq openssl unzip ca-certificates nano procps && rm -rf /var/lib/apt/lists/*
LABEL variant="588161"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
