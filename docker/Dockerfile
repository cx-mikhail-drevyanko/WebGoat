# WebGoat container perf test image
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends perl nano && rm -rf /var/lib/apt/lists/*
LABEL variant="792916"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
