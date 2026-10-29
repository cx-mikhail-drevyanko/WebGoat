# WebGoat container perf test image
FROM debian:12-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client gnupg nano libcurl4 unzip libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=35308
LABEL variant="830512"
FROM haproxy:2.0
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 procps zlib1g ca-certificates jq openssl perl libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=82590
LABEL variant="793656"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
