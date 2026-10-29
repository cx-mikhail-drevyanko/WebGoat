# WebGoat container perf test image
FROM golang:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends vim git && rm -rf /var/lib/apt/lists/*
LABEL variant="607132"
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 dnsutils openssl libssl-dev gnupg git libcurl4 ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=12173
LABEL variant="571765"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
