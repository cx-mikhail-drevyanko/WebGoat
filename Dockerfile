# WebGoat container perf test image
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y --no-install-recommends curl perl git wget && rm -rf /var/lib/apt/lists/*
ENV APP_ID=74598
LABEL variant="262466"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
