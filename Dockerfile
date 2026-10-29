# WebGoat container perf test image
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends jq libssl-dev zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="323084"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
