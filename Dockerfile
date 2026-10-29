# WebGoat container perf test image
FROM nginx:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip net-tools libcurl4 gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="572444"
FROM ruby:3.0-alpine
RUN apk add --no-cache wget libcurl openssl jq git openssh-client curl gzip
ENV APP_ID=3971
LABEL variant="553201"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
