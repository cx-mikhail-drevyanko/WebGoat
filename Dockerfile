# WebGoat container perf test image
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends unzip && rm -rf /var/lib/apt/lists/*
LABEL variant="987487"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
