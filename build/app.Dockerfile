# WebGoat container perf test image
FROM postgres:14 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip ca-certificates nano net-tools libxml2 openssl gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=88552
LABEL variant="130197"
FROM ruby:2.7-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends perl libssl-dev openssh-client sqlite3 git && rm -rf /var/lib/apt/lists/*
LABEL variant="750206"
FROM nginx:1.14
RUN apt-get update && apt-get install -y --no-install-recommends perl dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=59463
LABEL variant="161604"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
