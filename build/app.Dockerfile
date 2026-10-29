# WebGoat container perf test image
FROM debian:bullseye AS stage0
LABEL variant="644308"
FROM eclipse-temurin:11-jre AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends gnupg procps dnsutils ca-certificates vim curl libssl-dev openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=6985
LABEL variant="501109"
FROM postgres:14
RUN apt-get update && apt-get install -y --no-install-recommends wget gnupg curl nano openssl ca-certificates procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=3103
LABEL variant="262607"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
