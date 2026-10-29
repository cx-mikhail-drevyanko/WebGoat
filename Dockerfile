# WebGoat container perf test image
FROM golang:1.18 AS stage0
LABEL variant="838626"
FROM nginx:1.22
RUN apt-get update && apt-get install -y --no-install-recommends perl nano git && rm -rf /var/lib/apt/lists/*
LABEL variant="441181"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
