# WebGoat container perf test image
FROM node:12-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends nano perl libssl-dev unzip ca-certificates libcurl4 dnsutils vim && rm -rf /var/lib/apt/lists/*
RUN npm install request@2.88.0 express@4.16.0 moment@2.19.0
ENV APP_ID=22424
LABEL variant="901466"
FROM golang:1.20-alpine
RUN apk add --no-cache openssl sqlite libcurl vim busybox-extras
ENV APP_ID=68346
LABEL variant="487852"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
