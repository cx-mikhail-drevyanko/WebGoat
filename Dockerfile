# WebGoat container perf test image
FROM elasticsearch:7.17.9
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g procps openssh-client vim libxml2 openssl dnsutils ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="223177"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
