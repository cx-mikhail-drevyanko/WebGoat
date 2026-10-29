# WebGoat container perf test image
FROM python:3.9-alpine AS stage0
RUN apk add --no-cache vim libxml2 openssl libcurl curl jq zlib bash
LABEL variant="151899"
FROM postgres:14 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev zlib1g procps && rm -rf /var/lib/apt/lists/*
LABEL variant="99581"
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="670010"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
