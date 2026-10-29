# WebGoat container perf test image
FROM httpd:2.4.54 AS stage0
LABEL variant="300665"
FROM traefik:v2.5 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="198272"
FROM python:3.7-slim
RUN pip install requests==2.19.0 cryptography==2.3
ENV APP_ID=33563
LABEL variant="419078"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
