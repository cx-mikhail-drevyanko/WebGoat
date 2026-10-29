# WebGoat container perf test image
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g procps && rm -rf /var/lib/apt/lists/*
LABEL variant="919396"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
