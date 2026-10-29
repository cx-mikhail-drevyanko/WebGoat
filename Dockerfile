# WebGoat container perf test image
FROM python:3.11-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g vim && rm -rf /var/lib/apt/lists/*
RUN pip install flask==1.0 django==2.2.0 jinja2==2.10 numpy==1.16.0 sqlalchemy==1.2.0
LABEL variant="805482"
FROM debian:buster
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 curl perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=64412
LABEL variant="426819"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
