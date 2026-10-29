# WebGoat container perf test image
FROM python:3.11-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps libxml2 net-tools libcurl4 git && rm -rf /var/lib/apt/lists/*
ENV APP_ID=9894
LABEL variant="438571"
FROM caddy:2.7-alpine AS stage1
ENV APP_ID=69999
LABEL variant="142295"
FROM debian:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends openssl procps && rm -rf /var/lib/apt/lists/*
LABEL variant="432506"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
