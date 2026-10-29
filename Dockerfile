# WebGoat container perf test image
FROM ubuntu:20.04 AS stage0
LABEL variant="230779"
FROM alpine:3.16 AS stage1
RUN apk add --no-cache libxml2 curl wget
LABEL variant="129668"
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev sqlite3 zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="648874"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
