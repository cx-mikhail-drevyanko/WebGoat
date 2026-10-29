# WebGoat container perf test image
FROM alpine:3.20 AS stage0
RUN apk add --no-cache tzdata jq libxml2 wget gzip
ENV APP_ID=45530
LABEL variant="961954"
FROM postgres:12
RUN apt-get update && apt-get install -y --no-install-recommends wget net-tools libcurl4 unzip libssl-dev perl && rm -rf /var/lib/apt/lists/*
LABEL variant="34054"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
