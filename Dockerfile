# WebGoat container perf test image
FROM debian:10-slim
RUN apt-get update && apt-get install -y --no-install-recommends nano libssl-dev curl procps git ca-certificates libxml2 libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="397422"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
