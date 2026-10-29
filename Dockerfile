# WebGoat container perf test image
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g libcurl4 libxml2 curl ca-certificates vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=37524
LABEL variant="923882"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
