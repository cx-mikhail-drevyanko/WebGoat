# WebGoat container perf test image
FROM node:20-alpine AS stage0
RUN npm install moment@2.19.0 express@4.16.0
LABEL variant="801635"
FROM debian:11-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils vim git unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=96626
LABEL variant="946071"
FROM haproxy:2.0
RUN apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*
LABEL variant="180421"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
