# WebGoat container perf test image
FROM redis:7.0-alpine AS stage0
RUN apk add --no-cache expat gzip sqlite curl
LABEL variant="891639"
FROM postgres:14 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates jq net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=59281
LABEL variant="220812"
FROM mariadb:10.6
RUN apt-get update && apt-get install -y --no-install-recommends vim libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=29849
LABEL variant="881953"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
