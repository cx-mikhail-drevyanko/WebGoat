# WebGoat container perf test image
FROM golang:1.18
RUN apt-get update && apt-get install -y --no-install-recommends procps dnsutils curl && rm -rf /var/lib/apt/lists/*
LABEL variant="968250"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
