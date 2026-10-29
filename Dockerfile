# WebGoat container perf test image
FROM nginx:1.18 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates sqlite3 openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="998864"
FROM postgres:12
RUN apt-get update && apt-get install -y --no-install-recommends curl git dnsutils nano libssl-dev libxml2 procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=57275
LABEL variant="909438"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
