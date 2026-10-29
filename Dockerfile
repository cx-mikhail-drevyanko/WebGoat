# WebGoat container perf test image
FROM traefik:v2.5 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*
LABEL variant="226290"
FROM fedora:38 AS stage1
RUN yum install -y gzip openssl && yum clean all
ENV APP_ID=11463
LABEL variant="298648"
FROM debian:12-slim
LABEL variant="108538"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
