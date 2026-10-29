# WebGoat container perf test image
FROM postgres:14 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=43219
LABEL variant="163777"
FROM php:7.4-apache
RUN apt-get update && apt-get install -y --no-install-recommends git libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="246529"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
