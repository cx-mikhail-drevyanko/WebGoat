# WebGoat container perf test image
FROM alpine:3.12 AS stage0
RUN apk add --no-cache libcurl nano openssh-client tzdata
LABEL variant="588160"
FROM alpine:3.14 AS stage1
RUN apk add --no-cache tzdata expat openssh-client jq gzip zlib
ENV APP_ID=3252
LABEL variant="190673"
FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="80057"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
