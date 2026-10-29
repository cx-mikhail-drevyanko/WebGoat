# WebGoat container perf test image
FROM nginx:1.20-alpine AS stage0
RUN apk add --no-cache vim busybox-extras
LABEL variant="401845"
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends unzip zlib1g dnsutils wget && rm -rf /var/lib/apt/lists/*
RUN pip install cryptography==2.3
LABEL variant="883270"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
