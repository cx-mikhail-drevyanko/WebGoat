# WebGoat container perf test image
FROM caddy:2.7-alpine AS stage0
RUN apk add --no-cache zlib ca-certificates bind-tools libcurl busybox-extras jq gzip
LABEL variant="93293"
FROM python:3.9-slim
RUN apt-get update && apt-get install -y --no-install-recommends gnupg nano ca-certificates jq && rm -rf /var/lib/apt/lists/*
LABEL variant="390817"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
