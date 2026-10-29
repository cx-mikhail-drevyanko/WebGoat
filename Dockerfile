# WebGoat container perf test image
FROM influxdb:1.8 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl libxml2 dnsutils libcurl4 sqlite3 wget curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=56819
LABEL variant="517274"
FROM nginx:1.18 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=69455
LABEL variant="228388"
FROM alpine:3.12
RUN apk add --no-cache vim tzdata sqlite jq
LABEL variant="235584"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
