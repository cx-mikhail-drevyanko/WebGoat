# WebGoat container perf test image
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="99247"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
