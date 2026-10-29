# WebGoat container perf test image
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y --no-install-recommends procps wget libxml2 zlib1g dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=38183
LABEL variant="889153"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
