# WebGoat container perf test image
FROM ubuntu:20.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils ca-certificates libssl-dev perl openssl net-tools sqlite3 libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="328227"
FROM nginx:1.18
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates wget procps curl unzip sqlite3 libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=56812
LABEL variant="260182"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
