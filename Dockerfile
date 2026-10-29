# WebGoat container perf test image
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends procps && rm -rf /var/lib/apt/lists/*
LABEL variant="262492"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
