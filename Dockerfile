# WebGoat container perf test image
FROM mariadb:10.3 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 && rm -rf /var/lib/apt/lists/*
LABEL variant="233414"
FROM busybox:1.31 AS stage1
RUN apk add --no-cache openssh-client git
ENV APP_ID=29566
LABEL variant="490812"
FROM alpine:3.22
RUN apk add --no-cache openssh-client gzip zlib bash tar
ENV APP_ID=71832
LABEL variant="198289"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
