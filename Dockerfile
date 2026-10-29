# WebGoat container perf test image
FROM alpine:3.18 AS stage0
RUN apk add --no-cache bash zlib sqlite
ENV APP_ID=22385
LABEL variant="384310"
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends curl perl dnsutils git libcurl4 libssl-dev vim zlib1g && rm -rf /var/lib/apt/lists/*
RUN npm install axios@0.18.0 handlebars@4.0.5
ENV APP_ID=46287
LABEL variant="686049"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
