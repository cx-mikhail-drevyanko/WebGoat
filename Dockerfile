# WebGoat container perf test image
FROM mongo:6.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 ca-certificates unzip libssl-dev gnupg jq libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="735629"
FROM ruby:3.0-alpine
RUN apk add --no-cache tar gzip jq bash
LABEL variant="822801"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
