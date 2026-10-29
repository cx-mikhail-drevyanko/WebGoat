# WebGoat container perf test image
FROM haproxy:2.0 AS stage0
LABEL variant="852210"
FROM traefik:v2.5
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="40303"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
