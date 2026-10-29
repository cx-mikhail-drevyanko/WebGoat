# WebGoat container perf test image
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g libxml2 vim perl nano gnupg curl libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="393859"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
