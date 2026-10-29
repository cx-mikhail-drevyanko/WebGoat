# WebGoat container perf test image
FROM debian:10-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="808371"
FROM mongo:6.0 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends nano libcurl4 net-tools dnsutils libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=95476
LABEL variant="5721"
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev net-tools perl curl unzip ca-certificates nano jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=74272
LABEL variant="989823"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
