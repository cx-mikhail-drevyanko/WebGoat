# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN apk add --no-cache wget ca-certificates nano curl bash vim libxml2
LABEL variant="427405"
FROM debian:10-slim
RUN apt-get update && apt-get install -y --no-install-recommends nano libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="646466"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
