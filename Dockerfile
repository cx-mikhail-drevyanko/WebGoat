# WebGoat container perf test image
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends vim unzip gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="242711"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
