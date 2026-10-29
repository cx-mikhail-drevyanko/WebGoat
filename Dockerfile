# WebGoat container perf test image
FROM python:3.10-slim AS stage0
RUN pip install flask==1.0 cryptography==2.3 django==2.2.0
LABEL variant="38739"
FROM ruby:3.1-slim
RUN apt-get update && apt-get install -y --no-install-recommends perl openssl jq libxml2 ca-certificates nano dnsutils && rm -rf /var/lib/apt/lists/*
ENV APP_ID=86170
LABEL variant="82242"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
