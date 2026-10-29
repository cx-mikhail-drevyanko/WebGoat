# WebGoat container perf test image
FROM debian:buster
RUN apt-get update && apt-get install -y --no-install-recommends gnupg curl ca-certificates vim dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="999657"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
