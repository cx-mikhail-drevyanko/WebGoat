# WebGoat container perf test image
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 jq gnupg net-tools wget vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=50573
LABEL variant="948283"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
