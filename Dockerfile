# WebGoat container perf test image
FROM caddy:2.7-alpine AS stage0
RUN apk add --no-cache sqlite libxml2 openssh-client curl
ENV APP_ID=91111
LABEL variant="370669"
FROM eclipse-temurin:21-jre
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils libcurl4 perl procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=47733
LABEL variant="2978"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
