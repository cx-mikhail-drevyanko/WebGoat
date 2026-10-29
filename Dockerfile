# WebGoat container perf test image
FROM ubuntu:20.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools jq sqlite3 curl dnsutils libxml2 unzip zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="167993"
FROM rabbitmq:3.11
RUN apt-get update && apt-get install -y --no-install-recommends openssl libcurl4 vim dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="8372"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
