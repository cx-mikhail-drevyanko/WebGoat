# WebGoat container perf test image
FROM redis:6.0-alpine AS stage0
RUN apk add --no-cache tzdata busybox-extras libcurl
LABEL variant="6454"
FROM redis:7.0-alpine
RUN apk add --no-cache git curl vim nano
LABEL variant="314423"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
