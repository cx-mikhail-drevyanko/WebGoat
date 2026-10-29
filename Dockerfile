# WebGoat container perf test image
FROM debian:10-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client curl gnupg procps && rm -rf /var/lib/apt/lists/*
LABEL variant="214847"
FROM postgres:14
RUN apt-get update && apt-get install -y --no-install-recommends procps wget zlib1g jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=35736
LABEL variant="938534"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
