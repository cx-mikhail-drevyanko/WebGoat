# WebGoat container perf test image
FROM redis:7.0-alpine AS stage0
RUN apk add --no-cache vim bind-tools nano tzdata git tar
LABEL variant="897955"
FROM postgres:13-alpine AS stage1
ENV APP_ID=54702
LABEL variant="496979"
FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends git nano jq curl && rm -rf /var/lib/apt/lists/*
LABEL variant="967211"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
