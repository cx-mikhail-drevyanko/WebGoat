# WebGoat container perf test image
FROM debian:bullseye
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 zlib1g git procps libssl-dev nano libcurl4 ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="147264"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
