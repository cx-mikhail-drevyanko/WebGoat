# WebGoat container perf test image
FROM debian:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends perl ca-certificates openssl jq libcurl4 net-tools procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=91374
LABEL variant="139641"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
