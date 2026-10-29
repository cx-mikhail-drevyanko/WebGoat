# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends vim net-tools zlib1g wget && rm -rf /var/lib/apt/lists/*
LABEL variant="986797"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
