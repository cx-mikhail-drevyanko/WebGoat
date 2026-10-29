# WebGoat container perf test image
FROM mongo:6.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/*
LABEL variant="343355"
FROM postgres:14
RUN apt-get update && apt-get install -y --no-install-recommends wget sqlite3 libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=31356
LABEL variant="625598"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
