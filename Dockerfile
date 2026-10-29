# WebGoat container perf test image
FROM haproxy:2.0 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="401364"
FROM memcached:1.5 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client dnsutils perl net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="360819"
FROM alpine:3.16
RUN apk add --no-cache jq
LABEL variant="715918"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
