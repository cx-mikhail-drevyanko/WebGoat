# WebGoat container perf test image
FROM nginx:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=66567
LABEL variant="830007"
FROM postgres:11-alpine
RUN apk add --no-cache bind-tools curl jq ca-certificates
LABEL variant="445932"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
