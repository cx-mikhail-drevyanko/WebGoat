# WebGoat container perf test image
FROM python:3.9-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 libxml2 procps libcurl4 && rm -rf /var/lib/apt/lists/*
RUN pip install jinja2==2.10 pyyaml==5.1 cryptography==2.3 sqlalchemy==1.2.0 flask==1.0
LABEL variant="994312"
FROM golang:1.20-alpine AS stage1
RUN apk add --no-cache ca-certificates wget libcurl nano busybox-extras
LABEL variant="854519"
FROM nginx:1.14
RUN apt-get update && apt-get install -y --no-install-recommends gnupg curl libssl-dev net-tools ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="649670"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
