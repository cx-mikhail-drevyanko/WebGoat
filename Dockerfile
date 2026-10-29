# WebGoat container perf test image
FROM mongo:4.4 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip gnupg curl vim && rm -rf /var/lib/apt/lists/*
LABEL variant="917756"
FROM postgres:11-alpine
LABEL variant="382453"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
