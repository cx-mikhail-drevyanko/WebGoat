# WebGoat container perf test image
FROM traefik:v2.10
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 perl zlib1g libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="564374"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
