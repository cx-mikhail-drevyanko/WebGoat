# WebGoat container perf test image
FROM golang:1.16-alpine AS stage0
LABEL variant="12196"
FROM php:8.0-cli
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client openssl zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="741822"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
