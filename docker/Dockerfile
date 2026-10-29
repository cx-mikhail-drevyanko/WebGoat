# WebGoat container perf test image
FROM debian:10-slim AS stage0
ENV APP_ID=32823
LABEL variant="788202"
FROM node:18-slim AS stage1
RUN npm install handlebars@4.0.5 lodash@4.17.4
ENV APP_ID=74813
LABEL variant="221385"
FROM nginx:1.22
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 libssl-dev procps openssl gnupg curl sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="111576"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
