# WebGoat container perf test image
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends jq && rm -rf /var/lib/apt/lists/*
LABEL variant="235825"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
