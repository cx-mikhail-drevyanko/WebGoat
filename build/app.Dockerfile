# WebGoat container perf test image
FROM elasticsearch:7.17.9 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g curl libssl-dev vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=46671
LABEL variant="785067"
FROM php:8.0-cli
LABEL variant="53603"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
