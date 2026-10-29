# WebGoat container perf test image
FROM ubuntu:20.04 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=10621
LABEL variant="957000"
FROM memcached:1.5 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends gnupg perl libcurl4 net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="530018"
FROM python:3.8-slim
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev procps gnupg libcurl4 unzip sqlite3 dnsutils && rm -rf /var/lib/apt/lists/*
RUN pip install pyyaml==5.1 lxml==4.2.0 django==2.2.0 requests==2.19.0 paramiko==2.4.0
LABEL variant="545022"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
