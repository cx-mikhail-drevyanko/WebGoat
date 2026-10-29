# WebGoat container perf test image
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 gnupg libcurl4 vim perl jq procps libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="982056"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
