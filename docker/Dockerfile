# WebGoat container perf test image
FROM eclipse-temurin:21-jre AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl git zlib1g openssl unzip nano curl && rm -rf /var/lib/apt/lists/*
LABEL variant="215740"
FROM alpine:3.20 AS stage1
RUN apk add --no-cache ca-certificates
LABEL variant="126106"
FROM alpine:3.10
RUN apk add --no-cache tar curl jq libcurl
LABEL variant="595653"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
