# WebGoat container perf test image
FROM redis:6.2 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=94337
LABEL variant="393496"
FROM python:3.10-slim AS stage1
LABEL variant="289965"
FROM php:8.0-cli
RUN apt-get update && apt-get install -y --no-install-recommends gnupg procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=77901
LABEL variant="957624"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
