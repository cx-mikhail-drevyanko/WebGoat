# WebGoat container perf test image
FROM centos:7 AS stage0
RUN yum install -y git curl wget bind-utils gzip zlib openssh-clients && yum clean all
ENV APP_ID=73590
LABEL variant="847740"
FROM node:16-alpine AS stage1
RUN apk add --no-cache curl bind-tools libcurl git sqlite gzip
LABEL variant="412995"
FROM mysql:5.7
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates vim nano libssl-dev curl zlib1g libxml2 openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=13236
LABEL variant="571746"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
