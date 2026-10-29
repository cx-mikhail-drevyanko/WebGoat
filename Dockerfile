# WebGoat container perf test image
FROM redis:5.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools procps git && rm -rf /var/lib/apt/lists/*
LABEL variant="362286"
FROM fedora:34 AS stage1
LABEL variant="100231"
FROM mongo:6.0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools jq openssl perl curl libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="352657"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
