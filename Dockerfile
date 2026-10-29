# WebGoat container perf test image
FROM ubuntu:22.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 ca-certificates zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=40198
LABEL variant="94354"
FROM busybox:1.36
RUN apk add --no-cache vim
LABEL variant="213486"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
