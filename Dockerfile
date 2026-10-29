# WebGoat container perf test image
FROM eclipse-temurin:11-jre
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g vim procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=72113
LABEL variant="509537"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
