# WebGoat container perf test image
FROM nginx:1.20-alpine AS stage0
RUN apk add --no-cache jq git zlib
LABEL variant="515556"
FROM elasticsearch:7.17.9 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends wget ca-certificates libcurl4 libssl-dev openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="70332"
FROM debian:bullseye
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=40415
LABEL variant="625922"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
