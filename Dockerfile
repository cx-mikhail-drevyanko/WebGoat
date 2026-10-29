# WebGoat container perf test image
FROM python:3.10-slim AS stage0
RUN pip install flask==1.0 pyyaml==5.1 sqlalchemy==1.2.0
LABEL variant="22711"
FROM alpine:3.20 AS stage1
RUN apk add --no-cache tar tzdata busybox-extras zlib jq openssl vim expat
LABEL variant="515504"
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dnsutils libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="785411"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
