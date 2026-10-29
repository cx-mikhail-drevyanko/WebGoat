# WebGoat container perf test image
FROM mysql:5.7
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates openssl zlib1g curl dnsutils libssl-dev git wget && rm -rf /var/lib/apt/lists/*
LABEL variant="615234"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
