# WebGoat container perf test image
FROM eclipse-temurin:11-jre
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev ca-certificates zlib1g curl net-tools nano && rm -rf /var/lib/apt/lists/*
LABEL variant="237557"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
