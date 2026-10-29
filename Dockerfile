# WebGoat container perf test image
FROM golang:1.20-alpine AS stage0
RUN apk add --no-cache nano vim bind-tools
LABEL variant="666163"
FROM node:12-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 openssh-client perl && rm -rf /var/lib/apt/lists/*
RUN npm install moment@2.19.0 axios@0.18.0
ENV APP_ID=32134
LABEL variant="109227"
FROM postgres:13-alpine
LABEL variant="459539"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
