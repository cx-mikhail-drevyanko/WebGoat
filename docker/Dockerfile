# WebGoat container perf test image
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends openssl libcurl4 curl perl ca-certificates zlib1g net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=53346
LABEL variant="237582"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
