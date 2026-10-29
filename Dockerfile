# WebGoat container perf test image
FROM traefik:v2.10 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends gnupg zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="994358"
FROM ruby:2.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates libcurl4 net-tools zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="970816"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
