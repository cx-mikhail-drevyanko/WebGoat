# WebGoat container perf test image
FROM mysql:8.0
RUN apt-get update && apt-get install -y --no-install-recommends unzip libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="138474"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
