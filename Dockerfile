# WebGoat container perf test image
FROM rabbitmq:3.11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends vim && rm -rf /var/lib/apt/lists/*
LABEL variant="246744"
FROM amazonlinux:2 AS stage1
LABEL variant="857074"
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 jq && rm -rf /var/lib/apt/lists/*
RUN pip install jinja2==2.10
ENV APP_ID=23610
LABEL variant="104366"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
