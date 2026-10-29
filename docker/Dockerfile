# WebGoat container perf test image
FROM mongo:5.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 jq git openssl wget && rm -rf /var/lib/apt/lists/*
LABEL variant="879732"
FROM postgres:13-alpine
RUN apk add --no-cache sqlite ca-certificates gzip git
ENV APP_ID=48796
LABEL variant="45949"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
