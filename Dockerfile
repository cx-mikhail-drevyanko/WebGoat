# WebGoat container perf test image
FROM centos:8 AS stage0
ENV APP_ID=84413
LABEL variant="753184"
FROM ubuntu:24.04 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends nano perl git && rm -rf /var/lib/apt/lists/*
LABEL variant="930229"
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils perl libxml2 openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="224248"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
