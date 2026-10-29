# WebGoat container perf test image
FROM ruby:3.1-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=85234
LABEL variant="446415"
FROM alpine:3.18
LABEL variant="997416"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
