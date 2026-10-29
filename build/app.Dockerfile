# WebGoat container perf test image
FROM debian:11-slim
RUN apt-get update && apt-get install -y --no-install-recommends vim jq libxml2 unzip zlib1g nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=41542
LABEL variant="388520"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
