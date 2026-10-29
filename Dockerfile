# WebGoat container perf test image
FROM redis:5.0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g openssl perl libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="643549"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
