# WebGoat container perf test image
FROM python:3.8-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends procps curl jq && rm -rf /var/lib/apt/lists/*
RUN pip install lxml==4.2.0 sqlalchemy==1.2.0 pyyaml==5.1 pillow==6.2.0 jinja2==2.10
LABEL variant="420880"
FROM ubuntu:20.04
ENV APP_ID=18559
LABEL variant="307529"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
