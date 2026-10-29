# WebGoat container perf test image
FROM memcached:1.5
RUN apt-get update && apt-get install -y --no-install-recommends net-tools openssh-client unzip libssl-dev libcurl4 wget openssl libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="328855"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
