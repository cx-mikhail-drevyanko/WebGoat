# WebGoat container perf test image
FROM amazonlinux:2 AS stage0
RUN yum install -y openssh-clients vim-minimal tar sqlite gzip && yum clean all
LABEL variant="625696"
FROM traefik:v2.5 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends procps sqlite3 wget jq gnupg libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=39189
LABEL variant="929719"
FROM debian:10-slim
ENV APP_ID=67798
LABEL variant="516190"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
