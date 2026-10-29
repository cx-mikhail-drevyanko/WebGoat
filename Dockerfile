# WebGoat container perf test image
FROM mariadb:10.6 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools dnsutils procps sqlite3 nano curl && rm -rf /var/lib/apt/lists/*
LABEL variant="773013"
FROM rabbitmq:3.11 AS stage1
ENV APP_ID=93586
LABEL variant="139137"
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils unzip curl procps net-tools libxml2 libssl-dev openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=84422
LABEL variant="817798"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
