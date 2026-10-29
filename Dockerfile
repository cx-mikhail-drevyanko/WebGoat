# WebGoat container perf test image
FROM ubuntu:22.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends jq libxml2 vim procps net-tools dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="154611"
FROM postgres:12
LABEL variant="302188"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
