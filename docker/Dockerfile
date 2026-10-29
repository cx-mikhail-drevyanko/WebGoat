# WebGoat container perf test image
FROM busybox:1.36 AS stage0
RUN apk add --no-cache tar libcurl
ENV APP_ID=24994
LABEL variant="645563"
FROM eclipse-temurin:17-jre-alpine AS stage1
RUN apk add --no-cache sqlite zlib ca-certificates
ENV APP_ID=8957
LABEL variant="423980"
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends net-tools gnupg vim perl ca-certificates libssl-dev wget && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0 handlebars@4.0.5 lodash@4.17.4 axios@0.18.0
ENV APP_ID=26402
LABEL variant="86243"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
