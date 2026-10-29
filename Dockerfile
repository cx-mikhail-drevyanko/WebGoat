# WebGoat container perf test image
FROM mysql:5.7 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends vim unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=67591
LABEL variant="558342"
FROM debian:11-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends git sqlite3 openssh-client zlib1g nano jq libxml2 curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=53623
LABEL variant="90140"
FROM memcached:1.5
RUN apt-get update && apt-get install -y --no-install-recommends perl libcurl4 nano libssl-dev dnsutils net-tools jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=74172
LABEL variant="554088"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
