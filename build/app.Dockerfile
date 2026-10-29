# WebGoat container perf test image
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 procps libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=1782
LABEL variant="758678"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
