# WebGoat container perf test image
FROM postgres:12 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g wget unzip ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=48358
LABEL variant="317181"
FROM eclipse-temurin:11-jre
RUN apt-get update && apt-get install -y --no-install-recommends unzip wget jq dnsutils nano ca-certificates libssl-dev libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="418398"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
