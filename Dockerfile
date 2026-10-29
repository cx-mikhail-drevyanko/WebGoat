# WebGoat container perf test image
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends vim && rm -rf /var/lib/apt/lists/*
LABEL variant="775643"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
