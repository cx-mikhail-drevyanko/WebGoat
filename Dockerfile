# WebGoat container perf test image
FROM traefik:v2.5 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git wget gnupg ca-certificates openssh-client dnsutils procps curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=92005
LABEL variant="963154"
FROM ruby:2.7-slim AS stage1
ENV APP_ID=44195
LABEL variant="15821"
FROM tomcat:9.0-jre11
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=48735
LABEL variant="206484"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
