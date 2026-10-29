# WebGoat container perf test image
FROM httpd:2.4.46 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps zlib1g gnupg dnsutils net-tools libxml2 perl ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="968544"
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev && rm -rf /var/lib/apt/lists/*
LABEL variant="645022"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
