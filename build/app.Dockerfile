# WebGoat container perf test image
FROM nginx:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends jq libssl-dev gnupg libcurl4 git curl perl && rm -rf /var/lib/apt/lists/*
LABEL variant="331065"
FROM traefik:v2.10
ENV APP_ID=20966
LABEL variant="592143"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
