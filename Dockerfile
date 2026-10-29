# WebGoat container perf test image
FROM tomcat:9.0-jre11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends jq dnsutils nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=76908
LABEL variant="969774"
FROM node:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends vim perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=9216
LABEL variant="41734"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
