# WebGoat container perf test image
FROM ruby:2.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends openssl perl ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="75725"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
