# WebGoat container perf test image
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 libssl-dev openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="469192"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
