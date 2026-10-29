# WebGoat container perf test image
FROM eclipse-temurin:21-jre AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils jq openssl vim sqlite3 net-tools unzip gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="121870"
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends perl wget zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=88594
LABEL variant="383593"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
