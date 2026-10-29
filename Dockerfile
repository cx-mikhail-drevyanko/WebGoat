# WebGoat container perf test image
FROM node:18-slim AS stage0
RUN npm install moment@2.19.0 request@2.88.0 axios@0.18.0
LABEL variant="540169"
FROM haproxy:2.0
RUN apt-get update && apt-get install -y --no-install-recommends jq gnupg libxml2 dnsutils zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="219022"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
