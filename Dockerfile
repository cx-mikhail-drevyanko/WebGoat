# WebGoat container perf test image
FROM php:8.0-cli AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends gnupg procps zlib1g unzip curl libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="161391"
FROM mysql:5.7
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client libcurl4 git perl gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="607807"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
