# WebGoat container perf test image
FROM nginx:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 unzip libssl-dev vim net-tools git && rm -rf /var/lib/apt/lists/*
LABEL variant="800348"
FROM haproxy:2.0
LABEL variant="251058"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
