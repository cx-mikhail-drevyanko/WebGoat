# WebGoat container perf test image
FROM ruby:2.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends jq zlib1g openssl perl libssl-dev sqlite3 dnsutils git && rm -rf /var/lib/apt/lists/*
LABEL variant="535321"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
