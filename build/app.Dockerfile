# WebGoat container perf test image
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends jq gnupg net-tools zlib1g dnsutils libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="185603"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
