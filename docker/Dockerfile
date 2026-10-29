# WebGoat container perf test image
FROM debian:bullseye
RUN apt-get update && apt-get install -y --no-install-recommends git sqlite3 openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="43570"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
