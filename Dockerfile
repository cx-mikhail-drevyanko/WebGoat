# WebGoat container perf test image
FROM fedora:34 AS stage0
RUN yum install -y tar && yum clean all
ENV APP_ID=2894
LABEL variant="751731"
FROM eclipse-temurin:21-jre AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g wget openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="213331"
FROM node:20-alpine
RUN apk add --no-cache openssl gzip
RUN npm install request@2.88.0 moment@2.19.0
ENV APP_ID=43471
LABEL variant="381060"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
