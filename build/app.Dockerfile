# WebGoat container perf test image
FROM busybox:1.31 AS stage0
RUN apk add --no-cache gzip zlib
LABEL variant="500030"
FROM eclipse-temurin:21-jre
RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/*
LABEL variant="875111"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
