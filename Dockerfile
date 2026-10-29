# WebGoat container perf test image
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends gnupg libcurl4 libxml2 jq dnsutils zlib1g ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=27080
LABEL variant="56283"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
