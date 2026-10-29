# WebGoat container perf test image
FROM ubuntu:22.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git zlib1g dnsutils jq openssl perl net-tools sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="914618"
FROM httpd:2.4.54 AS stage1
LABEL variant="354618"
FROM redis:6.2
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates sqlite3 libxml2 procps && rm -rf /var/lib/apt/lists/*
LABEL variant="573555"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
