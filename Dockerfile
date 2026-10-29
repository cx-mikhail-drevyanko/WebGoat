# WebGoat container perf test image
FROM mongo:5.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends wget libssl-dev libxml2 sqlite3 vim openssl procps && rm -rf /var/lib/apt/lists/*
LABEL variant="970634"
FROM debian:bullseye
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="996673"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
