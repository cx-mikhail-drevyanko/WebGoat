# WebGoat container perf test image
FROM rabbitmq:3.11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl curl procps unzip && rm -rf /var/lib/apt/lists/*
LABEL variant="391638"
FROM mariadb:10.6
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g dnsutils libcurl4 wget openssh-client && rm -rf /var/lib/apt/lists/*
ENV APP_ID=33679
LABEL variant="122753"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
