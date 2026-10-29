# WebGoat container perf test image
FROM elasticsearch:7.17.9 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools libxml2 openssh-client ca-certificates openssl sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="180582"
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends openssl libxml2 procps openssh-client libcurl4 vim sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="835067"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
