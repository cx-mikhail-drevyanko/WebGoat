# WebGoat container perf test image
FROM mysql:8.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip gnupg libcurl4 perl sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="76045"
FROM centos:7 AS stage1
RUN yum install -y jq openssl libxml2 vim-minimal git tar gzip zlib && yum clean all
LABEL variant="278753"
FROM traefik:v2.5
RUN apt-get update && apt-get install -y --no-install-recommends procps libssl-dev unzip perl && rm -rf /var/lib/apt/lists/*
LABEL variant="716510"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
