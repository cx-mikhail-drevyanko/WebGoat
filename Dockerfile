# WebGoat container perf test image
FROM golang:1.18
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=86113
LABEL variant="154374"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
