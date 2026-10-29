# WebGoat container perf test image
FROM debian:9-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates net-tools dnsutils unzip openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="723386"
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils jq openssl procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=48009
LABEL variant="858165"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
