# WebGoat container perf test image
FROM mariadb:10.3 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=68366
LABEL variant="399783"
FROM debian:buster AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client curl git ca-certificates jq dnsutils net-tools libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="530348"
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends unzip openssl gnupg procps wget && rm -rf /var/lib/apt/lists/*
LABEL variant="556868"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
