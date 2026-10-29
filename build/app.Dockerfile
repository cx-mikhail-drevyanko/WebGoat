# WebGoat container perf test image
FROM debian:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=92402
LABEL variant="676589"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
