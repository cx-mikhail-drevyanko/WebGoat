# WebGoat container perf test image
FROM tomcat:9.0-jre11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps wget curl gnupg nano && rm -rf /var/lib/apt/lists/*
LABEL variant="100066"
FROM redis:5.0 AS stage1
ENV APP_ID=61520
LABEL variant="939401"
FROM postgres:12
RUN apt-get update && apt-get install -y --no-install-recommends jq gnupg procps vim && rm -rf /var/lib/apt/lists/*
LABEL variant="53512"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
