# WebGoat container perf test image
FROM alpine:3.10 AS stage0
RUN apk add --no-cache git curl
LABEL variant="321364"
FROM traefik:v2.5 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends nano jq wget && rm -rf /var/lib/apt/lists/*
ENV APP_ID=45289
LABEL variant="600325"
FROM caddy:2.7-alpine
RUN apk add --no-cache vim libxml2
ENV APP_ID=94364
LABEL variant="707906"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
