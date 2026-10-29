# WebGoat container perf test image
FROM debian:9-slim
RUN apt-get update && apt-get install -y --no-install-recommends git wget dnsutils ca-certificates perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=57463
LABEL variant="120872"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
