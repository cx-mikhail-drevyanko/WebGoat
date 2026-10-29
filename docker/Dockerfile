# WebGoat container perf test image
FROM httpd:2.4.58-alpine AS stage0
RUN apk add --no-cache zlib ca-certificates bind-tools
LABEL variant="663736"
FROM python:3.10-slim
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 jq && rm -rf /var/lib/apt/lists/*
LABEL variant="823813"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
