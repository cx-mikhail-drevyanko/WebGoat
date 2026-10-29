# WebGoat container perf test image
FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends vim jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=30860
LABEL variant="291065"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
