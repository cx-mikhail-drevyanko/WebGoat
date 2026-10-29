# WebGoat container perf test image
FROM python:3.8-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends jq zlib1g openssl ca-certificates vim && rm -rf /var/lib/apt/lists/*
RUN pip install pyyaml==5.1 lxml==4.2.0 django==2.2.0
LABEL variant="422566"
FROM mysql:8.0
RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/*
LABEL variant="927829"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
