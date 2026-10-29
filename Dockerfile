# WebGoat container perf test image
FROM node:14-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl jq unzip wget curl libxml2 && rm -rf /var/lib/apt/lists/*
RUN npm install jquery@2.2.4 lodash@4.17.4 handlebars@4.0.5 axios@0.18.0
LABEL variant="832123"
FROM node:18-slim AS stage1
RUN npm install handlebars@4.0.5 lodash@4.17.4
LABEL variant="618474"
FROM redis:6.0-alpine
RUN apk add --no-cache git sqlite
LABEL variant="162142"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
