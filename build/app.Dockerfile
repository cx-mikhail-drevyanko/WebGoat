# WebGoat container perf test image
FROM memcached:1.5
RUN apt-get update && apt-get install -y --no-install-recommends gnupg openssl dnsutils curl libxml2 nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=21364
LABEL variant="797060"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
