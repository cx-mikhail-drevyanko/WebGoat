# WebGoat container perf test image
FROM postgres:11-alpine AS stage0
RUN apk add --no-cache openssl git gzip jq
ENV APP_ID=94876
LABEL variant="109019"
FROM traefik:v2.10
RUN apt-get update && apt-get install -y --no-install-recommends wget vim nano libxml2 gnupg perl && rm -rf /var/lib/apt/lists/*
LABEL variant="832959"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
