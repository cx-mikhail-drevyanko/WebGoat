# WebGoat container perf test image
FROM debian:9-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 vim unzip zlib1g perl nano procps net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=29998
LABEL variant="678136"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
