# WebGoat container perf test image
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y --no-install-recommends openssl vim wget dnsutils libssl-dev gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=8034
LABEL variant="447533"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
