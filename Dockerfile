# WebGoat container perf test image
FROM php:7.4-apache AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g jq wget unzip libcurl4 sqlite3 libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="729490"
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends git gnupg openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="515324"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
