# WebGoat container perf test image
FROM node:16-slim
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev dnsutils procps git vim zlib1g libcurl4 perl && rm -rf /var/lib/apt/lists/*
LABEL variant="592562"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
