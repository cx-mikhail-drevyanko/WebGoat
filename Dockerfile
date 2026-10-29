# WebGoat container perf test image
FROM debian:bullseye
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils nano && rm -rf /var/lib/apt/lists/*
LABEL variant="661640"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
