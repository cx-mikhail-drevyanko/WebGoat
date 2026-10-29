# WebGoat container perf test image
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils jq wget nano openssh-client sqlite3 openssl net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=29785
LABEL variant="759706"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
