# WebGoat container perf test image
FROM memcached:1.5 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=9565
LABEL variant="592294"
FROM python:3.10-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=86091
LABEL variant="513557"
FROM memcached:1.6-alpine
RUN apk add --no-cache tzdata nano curl sqlite
LABEL variant="875063"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
