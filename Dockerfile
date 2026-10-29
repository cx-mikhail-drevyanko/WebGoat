# WebGoat container perf test image
FROM nginx:1.24-alpine AS stage0
RUN apk add --no-cache sqlite ca-certificates busybox-extras vim wget libxml2 libcurl
LABEL variant="805557"
FROM python:3.10-slim
RUN apt-get update && apt-get install -y --no-install-recommends jq nano zlib1g vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=92737
LABEL variant="340296"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
