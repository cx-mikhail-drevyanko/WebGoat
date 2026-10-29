# WebGoat container perf test image
FROM traefik:v2.5
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g openssh-client procps libcurl4 libxml2 git openssl dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="549722"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
