# WebGoat container perf test image
FROM mariadb:10.6 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends vim libcurl4 ca-certificates unzip curl && rm -rf /var/lib/apt/lists/*
LABEL variant="285928"
FROM memcached:1.6-alpine AS stage1
RUN apk add --no-cache nano openssh-client sqlite busybox-extras libcurl bash ca-certificates curl
LABEL variant="394962"
FROM postgres:12
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev wget zlib1g dnsutils net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=46486
LABEL variant="727961"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
