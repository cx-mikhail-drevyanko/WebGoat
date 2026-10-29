# WebGoat container perf test image
FROM traefik:v2.10
RUN apt-get update && apt-get install -y --no-install-recommends openssl nano libxml2 gnupg dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="703264"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
