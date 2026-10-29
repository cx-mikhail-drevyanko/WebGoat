# WebGoat container perf test image
FROM tomcat:9.0-jre11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g vim && rm -rf /var/lib/apt/lists/*
LABEL variant="802207"
FROM memcached:1.6-alpine
ENV APP_ID=7678
LABEL variant="847814"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
