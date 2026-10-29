# WebGoat container perf test image
FROM python:3.8-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev gnupg nano sqlite3 ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="80526"
FROM debian:11-slim
RUN apt-get update && apt-get install -y --no-install-recommends net-tools nano perl vim && rm -rf /var/lib/apt/lists/*
LABEL variant="290107"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
