# WebGoat container perf test image
FROM rabbitmq:3.8-alpine AS stage0
LABEL variant="957989"
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends gnupg perl net-tools sqlite3 openssl libssl-dev procps dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=49173
LABEL variant="389609"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
