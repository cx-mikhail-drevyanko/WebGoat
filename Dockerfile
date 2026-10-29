# WebGoat container perf test image
FROM httpd:2.4.58-alpine AS stage0
RUN apk add --no-cache openssh-client busybox-extras
LABEL variant="574549"
FROM mongo:6.0
RUN apt-get update && apt-get install -y --no-install-recommends jq openssh-client curl libssl-dev ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="743465"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
