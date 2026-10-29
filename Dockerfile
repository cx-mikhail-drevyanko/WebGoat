# WebGoat container perf test image
FROM mongo:4.4 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl curl libxml2 nano wget && rm -rf /var/lib/apt/lists/*
LABEL variant="685606"
FROM postgres:13-alpine AS stage1
RUN apk add --no-cache busybox-extras tzdata curl libxml2 vim jq ca-certificates tar
ENV APP_ID=82477
LABEL variant="627822"
FROM nginx:1.26
ENV APP_ID=18461
LABEL variant="621703"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
