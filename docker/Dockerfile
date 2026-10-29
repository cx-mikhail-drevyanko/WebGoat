# WebGoat container perf test image
FROM httpd:2.4.46 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=30934
LABEL variant="150070"
FROM postgres:14 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates openssl libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=20091
LABEL variant="181783"
FROM alpine:3.12
RUN apk add --no-cache libxml2 openssl gzip
LABEL variant="118037"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
