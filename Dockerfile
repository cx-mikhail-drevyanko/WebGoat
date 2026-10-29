# WebGoat container perf test image
FROM mariadb:10.3 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends curl libcurl4 dnsutils openssl git nano zlib1g perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=96575
LABEL variant="549901"
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 jq && rm -rf /var/lib/apt/lists/*
RUN npm install jquery@2.2.4 express@4.16.0 axios@0.18.0 moment@2.19.0
LABEL variant="857782"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
