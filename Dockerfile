# WebGoat container perf test image
FROM tomcat:9.0-jre11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates zlib1g openssl libxml2 git vim dnsutils perl && rm -rf /var/lib/apt/lists/*
LABEL variant="827390"
FROM caddy:2.7-alpine
RUN apk add --no-cache nano tzdata expat sqlite busybox-extras bash
LABEL variant="744482"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
