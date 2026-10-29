# WebGoat container perf test image
FROM tomcat:9.0-jre11
RUN apt-get update && apt-get install -y --no-install-recommends unzip dnsutils jq zlib1g libxml2 ca-certificates libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=70928
LABEL variant="775112"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
