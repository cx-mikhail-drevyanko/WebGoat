# WebGoat container perf test image
FROM eclipse-temurin:11-jre
RUN apt-get update && apt-get install -y --no-install-recommends perl dnsutils openssl curl zlib1g openssh-client libcurl4 git && rm -rf /var/lib/apt/lists/*
LABEL variant="725558"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
