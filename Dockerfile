# WebGoat container perf test image
FROM ubuntu:16.04 AS stage0
LABEL variant="552445"
FROM ubuntu:16.04 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils gnupg ca-certificates sqlite3 git perl && rm -rf /var/lib/apt/lists/*
LABEL variant="540345"
FROM httpd:2.4.58-alpine
RUN apk add --no-cache gzip libcurl ca-certificates vim openssh-client git
LABEL variant="773859"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
