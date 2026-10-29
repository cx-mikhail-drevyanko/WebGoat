# WebGoat container perf test image
FROM debian:9-slim
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g gnupg procps net-tools libxml2 dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="639221"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
