# WebGoat container perf test image
FROM alpine:3.14 AS stage0
RUN apk add --no-cache vim ca-certificates curl tzdata busybox-extras bind-tools openssl sqlite
LABEL variant="545482"
FROM alpine:3.20 AS stage1
RUN apk add --no-cache expat bind-tools gzip libcurl libxml2 tzdata
LABEL variant="602843"
FROM redis:5.0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client libxml2 && rm -rf /var/lib/apt/lists/*
LABEL variant="599162"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
