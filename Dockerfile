# WebGoat container perf test image
FROM busybox:1.31 AS stage0
RUN apk add --no-cache bind-tools
LABEL variant="22692"
FROM alpine:3.16 AS stage1
RUN apk add --no-cache expat bind-tools curl openssh-client openssl
ENV APP_ID=28213
LABEL variant="335675"
FROM postgres:14
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=10628
LABEL variant="848793"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
