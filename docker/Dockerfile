# WebGoat container perf test image
FROM nginx:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends gnupg openssh-client openssl jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=26259
LABEL variant="651470"
FROM eclipse-temurin:21-jre
LABEL variant="11305"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
