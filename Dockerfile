# WebGoat container perf test image
FROM httpd:2.4.58-alpine AS stage0
RUN apk add --no-cache ca-certificates jq wget bash nano
ENV APP_ID=6089
LABEL variant="480155"
FROM debian:9-slim
RUN apt-get update && apt-get install -y --no-install-recommends git dnsutils curl gnupg wget perl openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=84590
LABEL variant="516801"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
