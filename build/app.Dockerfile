# WebGoat container perf test image
FROM eclipse-temurin:11-jre AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 nano perl jq gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=9551
LABEL variant="603784"
FROM busybox:1.36 AS stage1
RUN apk add --no-cache bind-tools gzip ca-certificates jq expat tzdata openssh-client
LABEL variant="319555"
FROM mongo:6.0
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev net-tools gnupg ca-certificates dnsutils procps && rm -rf /var/lib/apt/lists/*
LABEL variant="790308"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
