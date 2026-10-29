# WebGoat container perf test image
FROM ruby:2.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends jq procps curl && rm -rf /var/lib/apt/lists/*
LABEL variant="695550"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
