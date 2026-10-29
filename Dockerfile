# WebGoat container perf test image
FROM nginx:1.14 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="473372"
FROM alpine:3.18
ENV APP_ID=76667
LABEL variant="664611"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
