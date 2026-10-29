# WebGoat container perf test image
FROM httpd:2.4.54 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends gnupg jq && rm -rf /var/lib/apt/lists/*
LABEL variant="132811"
FROM debian:10-slim
RUN apt-get update && apt-get install -y --no-install-recommends net-tools curl unzip perl git vim openssh-client libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="902347"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
