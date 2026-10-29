# WebGoat container perf test image
FROM ubuntu:20.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates wget zlib1g perl libcurl4 gnupg openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="648898"
FROM busybox:1.31
RUN apk add --no-cache curl bind-tools git libcurl tzdata
ENV APP_ID=52297
LABEL variant="176089"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
