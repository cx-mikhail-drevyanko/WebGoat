# WebGoat container perf test image
FROM alpine:3.20 AS stage0
LABEL variant="480135"
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev perl gnupg unzip && rm -rf /var/lib/apt/lists/*
LABEL variant="435521"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
