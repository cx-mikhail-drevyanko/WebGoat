# WebGoat container perf test image
FROM debian:9-slim
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils git unzip && rm -rf /var/lib/apt/lists/*
LABEL variant="843526"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
