# WebGoat container perf test image
FROM mongo:5.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="101843"
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends curl jq libxml2 wget libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="417437"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
