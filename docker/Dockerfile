# WebGoat container perf test image
FROM debian:9-slim
RUN apt-get update && apt-get install -y --no-install-recommends gnupg vim procps git unzip zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="584955"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
