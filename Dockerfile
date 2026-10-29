# WebGoat container perf test image
FROM ubuntu:16.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*
LABEL variant="847301"
FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends procps sqlite3 wget && rm -rf /var/lib/apt/lists/*
RUN pip install flask==1.0 pyyaml==5.1 numpy==1.16.0 requests==2.19.0 pillow==6.2.0
ENV APP_ID=33543
LABEL variant="488877"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
