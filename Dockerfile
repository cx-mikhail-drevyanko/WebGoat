# WebGoat container perf test image
FROM node:16-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends curl vim openssl libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="415"
FROM node:18-alpine AS stage1
RUN apk add --no-cache zlib nano expat bind-tools gzip openssh-client libcurl
RUN npm install moment@2.19.0 express@4.16.0 handlebars@4.0.5
ENV APP_ID=37050
LABEL variant="552960"
FROM redis:7.0-alpine
RUN apk add --no-cache wget vim jq git bash zlib
ENV APP_ID=4552
LABEL variant="954808"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
