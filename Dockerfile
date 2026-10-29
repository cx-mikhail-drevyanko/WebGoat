# WebGoat container perf test image
FROM httpd:2.4.46 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=77690
LABEL variant="12629"
FROM debian:9-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates sqlite3 dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=25766
LABEL variant="59194"
FROM traefik:v2.5
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates net-tools curl openssl git nano zlib1g && rm -rf /var/lib/apt/lists/*
LABEL variant="272183"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
