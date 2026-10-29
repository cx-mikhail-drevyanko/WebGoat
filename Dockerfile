# WebGoat container perf test image
FROM eclipse-temurin:11-jre
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates net-tools openssl nano procps jq openssh-client libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=20806
LABEL variant="400022"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
