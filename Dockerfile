# WebGoat container perf test image
FROM mysql:8.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev zlib1g wget && rm -rf /var/lib/apt/lists/*
ENV APP_ID=20361
LABEL variant="359612"
FROM ubuntu:18.04 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends procps dnsutils net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=27720
LABEL variant="913412"
FROM traefik:v2.10
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=46392
LABEL variant="503987"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
