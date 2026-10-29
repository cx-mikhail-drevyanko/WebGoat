# WebGoat container perf test image
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends unzip dnsutils libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="270499"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
