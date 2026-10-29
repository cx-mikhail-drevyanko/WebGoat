# WebGoat container perf test image
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends procps openssl perl libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="819177"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
