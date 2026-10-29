# WebGoat container perf test image
FROM tomcat:10.1-jre17 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps dnsutils nano libxml2 jq perl libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=62789
LABEL variant="244424"
FROM eclipse-temurin:17-jre-alpine AS stage1
RUN apk add --no-cache busybox-extras zlib curl vim openssh-client nano sqlite bash
ENV APP_ID=20117
LABEL variant="22010"
FROM mariadb:10.6
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="48347"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
