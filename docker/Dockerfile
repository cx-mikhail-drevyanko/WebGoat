# WebGoat container perf test image
FROM busybox:1.31 AS stage0
RUN apk add --no-cache vim
ENV APP_ID=74898
LABEL variant="482587"
FROM eclipse-temurin:11-jre
RUN apt-get update && apt-get install -y --no-install-recommends perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=26519
LABEL variant="255459"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
