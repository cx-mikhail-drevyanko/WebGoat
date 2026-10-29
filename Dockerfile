# WebGoat container perf test image
FROM debian:buster AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils wget libssl-dev gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=25726
LABEL variant="351931"
FROM haproxy:2.0 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils vim openssl zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=46939
LABEL variant="961007"
FROM nginx:1.18
LABEL variant="34004"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
