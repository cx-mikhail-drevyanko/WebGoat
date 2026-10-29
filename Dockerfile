# WebGoat container perf test image
FROM httpd:2.4.54 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client procps nano libssl-dev wget && rm -rf /var/lib/apt/lists/*
LABEL variant="711321"
FROM eclipse-temurin:11-jre AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g openssh-client dnsutils procps curl ca-certificates jq perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=2943
LABEL variant="632947"
FROM caddy:2.7-alpine
RUN apk add --no-cache bind-tools ca-certificates jq busybox-extras wget
LABEL variant="954870"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
