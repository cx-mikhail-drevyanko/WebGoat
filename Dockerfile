# WebGoat container perf test image
FROM traefik:v2.10 AS stage0
ENV APP_ID=44861
LABEL variant="630874"
FROM debian:11-slim
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 gnupg libcurl4 vim libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="926859"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
