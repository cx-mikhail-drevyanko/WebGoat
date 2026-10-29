# WebGoat container perf test image
FROM eclipse-temurin:11-jre AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps vim perl libcurl4 gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=90155
LABEL variant="508627"
FROM httpd:2.4.54
LABEL variant="430298"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
