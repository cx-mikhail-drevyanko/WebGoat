# WebGoat container perf test image
FROM debian:bullseye AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g procps openssh-client libssl-dev git && rm -rf /var/lib/apt/lists/*
LABEL variant="308926"
FROM eclipse-temurin:17-jre-alpine AS stage1
RUN apk add --no-cache vim curl nano
LABEL variant="588758"
FROM httpd:2.4.58-alpine
RUN apk add --no-cache tzdata libcurl expat ca-certificates bash curl
LABEL variant="180965"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
