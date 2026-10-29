# WebGoat container perf test image
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends openssl git unzip openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=97035
LABEL variant="346517"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
