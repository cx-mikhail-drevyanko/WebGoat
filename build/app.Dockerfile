# WebGoat container perf test image
FROM debian:9-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils unzip gnupg openssh-client libxml2 net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="28318"
FROM mariadb:10.6 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends vim openssh-client openssl unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=28084
LABEL variant="499525"
FROM eclipse-temurin:11-jre
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="764739"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
