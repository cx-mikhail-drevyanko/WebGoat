# WebGoat container perf test image
FROM influxdb:1.8 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 dnsutils vim curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=62934
LABEL variant="557476"
FROM nginx:1.20-alpine AS stage1
LABEL variant="902955"
FROM alpine:3.16
RUN apk add --no-cache git
LABEL variant="317198"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
