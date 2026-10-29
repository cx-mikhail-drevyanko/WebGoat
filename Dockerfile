# WebGoat container perf test image
FROM nginx:1.26 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="534562"
FROM python:3.10-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="376323"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
