# WebGoat container perf test image
FROM amazonlinux:2 AS stage0
ENV APP_ID=65778
LABEL variant="885049"
FROM golang:1.18 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends procps ca-certificates libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=57369
LABEL variant="589014"
FROM tomcat:9.0-jre11
RUN apt-get update && apt-get install -y --no-install-recommends gnupg sqlite3 zlib1g nano && rm -rf /var/lib/apt/lists/*
LABEL variant="625419"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
