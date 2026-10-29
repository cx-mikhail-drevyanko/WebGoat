# WebGoat container perf test image
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev ca-certificates gnupg procps wget unzip libxml2 openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=13427
LABEL variant="657372"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
