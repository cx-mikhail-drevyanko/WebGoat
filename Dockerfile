# WebGoat container perf test image
FROM redis:6.2
RUN apt-get update && apt-get install -y --no-install-recommends curl sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=1829
LABEL variant="780077"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
