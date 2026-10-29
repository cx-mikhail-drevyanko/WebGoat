# WebGoat container perf test image
FROM tomcat:10.1-jre17 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 dnsutils net-tools ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="792097"
FROM ubuntu:22.04
RUN apt-get update && apt-get install -y --no-install-recommends perl ca-certificates libssl-dev jq net-tools unzip openssl libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=2297
LABEL variant="936116"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
