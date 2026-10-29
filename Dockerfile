# WebGoat container perf test image
FROM node:16-alpine AS stage0
RUN apk add --no-cache libxml2 expat sqlite busybox-extras nano ca-certificates wget openssl
LABEL variant="728205"
FROM tomcat:8.5-jre8 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client libcurl4 gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=38255
LABEL variant="689027"
FROM fedora:34
ENV APP_ID=38818
LABEL variant="960737"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
