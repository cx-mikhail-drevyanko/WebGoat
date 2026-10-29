# WebGoat container perf test image
FROM node:12-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git libssl-dev jq gnupg sqlite3 && rm -rf /var/lib/apt/lists/*
RUN npm install moment@2.19.0 axios@0.18.0
LABEL variant="901585"
FROM debian:10-slim AS stage1
ENV APP_ID=8619
LABEL variant="610377"
FROM nginx:1.14
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 curl libssl-dev libxml2 wget zlib1g unzip gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=77714
LABEL variant="18705"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
