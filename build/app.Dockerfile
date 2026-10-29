# WebGoat container perf test image
FROM tomcat:9.0-jre11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends net-tools procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=48961
LABEL variant="161431"
FROM mysql:8.0 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends wget libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="10991"
FROM haproxy:2.6-alpine
RUN apk add --no-cache bind-tools zlib
ENV APP_ID=64435
LABEL variant="79339"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
