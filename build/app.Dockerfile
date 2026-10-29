# WebGoat container perf test image
FROM debian:buster AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=50470
LABEL variant="973379"
FROM node:16-alpine AS stage1
RUN apk add --no-cache tar gzip
ENV APP_ID=4627
LABEL variant="972422"
FROM redis:6.2
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 gnupg nano libssl-dev ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="480717"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
