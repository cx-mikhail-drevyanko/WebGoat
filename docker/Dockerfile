# WebGoat container perf test image
FROM ruby:3.0-alpine AS stage0
ENV APP_ID=59081
LABEL variant="395858"
FROM python:3.11-slim AS stage1
RUN pip install urllib3==1.24 pillow==6.2.0 django==2.2.0
LABEL variant="842495"
FROM nginx:1.22
RUN apt-get update && apt-get install -y --no-install-recommends curl unzip libcurl4 git && rm -rf /var/lib/apt/lists/*
LABEL variant="56094"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
