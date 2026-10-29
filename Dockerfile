# WebGoat container perf test image
FROM ubuntu:20.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends nano wget net-tools jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=60379
LABEL variant="414138"
FROM traefik:v2.5 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g wget openssh-client jq dnsutils ca-certificates unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=56881
LABEL variant="408146"
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 libssl-dev ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=69064
LABEL variant="192600"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
