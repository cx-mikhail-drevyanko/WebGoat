# WebGoat container perf test image
FROM debian:buster AS stage0
LABEL variant="91580"
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends openssl jq gnupg ca-certificates procps zlib1g perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=34177
LABEL variant="850589"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
