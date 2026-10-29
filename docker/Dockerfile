# WebGoat container perf test image
FROM golang:1.18 AS stage0
LABEL variant="784817"
FROM traefik:v2.10
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 curl jq sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="705274"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
