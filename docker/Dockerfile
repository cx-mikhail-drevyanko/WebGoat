# WebGoat container perf test image
FROM debian:10-slim
RUN apt-get update && apt-get install -y --no-install-recommends perl net-tools git && rm -rf /var/lib/apt/lists/*
LABEL variant="558819"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
