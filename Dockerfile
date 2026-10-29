# WebGoat container perf test image
FROM node:14-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="102712"
FROM ubuntu:22.04 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=20905
LABEL variant="61006"
FROM traefik:v2.10
RUN apt-get update && apt-get install -y --no-install-recommends nano unzip ca-certificates wget perl vim libcurl4 gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="621203"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
