# WebGoat container perf test image
FROM ubuntu:24.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip ca-certificates wget vim net-tools gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="41679"
FROM haproxy:2.0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="627824"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
