# WebGoat container perf test image
FROM memcached:1.6-alpine AS stage0
LABEL variant="558581"
FROM debian:bullseye
RUN apt-get update && apt-get install -y --no-install-recommends unzip openssl git curl && rm -rf /var/lib/apt/lists/*
LABEL variant="728775"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
