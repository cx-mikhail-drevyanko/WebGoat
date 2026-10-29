# WebGoat container perf test image
FROM mongo:5.0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g vim gnupg libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="577857"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
