# WebGoat container perf test image
FROM rabbitmq:3.8-alpine AS stage0
LABEL variant="508961"
FROM mongo:5.0 AS stage1
LABEL variant="623070"
FROM eclipse-temurin:21-jre
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=85521
LABEL variant="692110"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
