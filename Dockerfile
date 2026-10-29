# WebGoat container perf test image
FROM debian:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends jq ca-certificates perl nano && rm -rf /var/lib/apt/lists/*
ENV APP_ID=59360
LABEL variant="52889"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
