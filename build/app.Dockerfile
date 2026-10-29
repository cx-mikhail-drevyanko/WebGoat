# WebGoat container perf test image
FROM influxdb:1.8 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends nano perl ca-certificates dnsutils procps && rm -rf /var/lib/apt/lists/*
LABEL variant="66921"
FROM rabbitmq:3.11 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends gnupg libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="499710"
FROM alpine:3.22
RUN apk add --no-cache curl git tzdata openssh-client
LABEL variant="983413"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
