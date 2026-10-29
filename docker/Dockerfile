# WebGoat container perf test image
FROM traefik:v2.5 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends nano sqlite3 && rm -rf /var/lib/apt/lists/*
LABEL variant="357238"
FROM python:3.11-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends nano dnsutils libssl-dev curl && rm -rf /var/lib/apt/lists/*
RUN pip install numpy==1.16.0 urllib3==1.24 jinja2==2.10
LABEL variant="468237"
FROM influxdb:1.8
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 net-tools ca-certificates gnupg openssl && rm -rf /var/lib/apt/lists/*
LABEL variant="470140"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
