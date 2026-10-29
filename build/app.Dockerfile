# WebGoat container perf test image
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="727887"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
