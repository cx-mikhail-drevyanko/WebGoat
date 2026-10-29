# WebGoat container perf test image
FROM memcached:1.5
RUN apt-get update && apt-get install -y --no-install-recommends unzip jq ca-certificates curl libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=22524
LABEL variant="740968"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
