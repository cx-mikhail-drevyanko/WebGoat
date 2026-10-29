# WebGoat container perf test image
FROM debian:buster AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps unzip libssl-dev zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=49626
LABEL variant="183261"
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends openssl libssl-dev wget && rm -rf /var/lib/apt/lists/*
LABEL variant="492145"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
