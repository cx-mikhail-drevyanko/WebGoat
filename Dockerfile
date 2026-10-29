# WebGoat container perf test image
FROM debian:10-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=21912
LABEL variant="950087"
FROM mysql:8.0
RUN apt-get update && apt-get install -y --no-install-recommends openssl jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=74286
LABEL variant="758708"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
