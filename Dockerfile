# WebGoat container perf test image
FROM debian:10-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git openssh-client libxml2 net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="597258"
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends net-tools perl && rm -rf /var/lib/apt/lists/*
LABEL variant="350471"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
