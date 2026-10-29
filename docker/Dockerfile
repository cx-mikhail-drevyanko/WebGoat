# WebGoat container perf test image
FROM python:3.7-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev openssh-client dnsutils openssl jq gnupg zlib1g && rm -rf /var/lib/apt/lists/*
RUN pip install numpy==1.16.0
ENV APP_ID=93420
LABEL variant="491987"
FROM alpine:3.18
RUN apk add --no-cache busybox-extras vim wget gzip libcurl zlib
LABEL variant="403252"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
