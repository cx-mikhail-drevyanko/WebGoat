# WebGoat container perf test image
FROM traefik:v2.5 AS stage0
ENV APP_ID=62556
LABEL variant="201321"
FROM mongo:4.4
RUN apt-get update && apt-get install -y --no-install-recommends gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=67789
LABEL variant="479102"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
