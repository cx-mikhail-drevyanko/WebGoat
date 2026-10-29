# WebGoat container perf test image
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends openssl sqlite3 nano && rm -rf /var/lib/apt/lists/*
LABEL variant="960281"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
