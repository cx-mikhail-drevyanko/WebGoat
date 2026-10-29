# WebGoat container perf test image
FROM ubuntu:18.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends wget vim sqlite3 jq openssh-client libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="992735"
FROM redis:6.2
RUN apt-get update && apt-get install -y --no-install-recommends gnupg perl unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=80479
LABEL variant="543515"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
