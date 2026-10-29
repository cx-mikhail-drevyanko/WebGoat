# WebGoat container perf test image
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends git openssh-client openssl libcurl4 zlib1g perl unzip && rm -rf /var/lib/apt/lists/*
LABEL variant="801953"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
