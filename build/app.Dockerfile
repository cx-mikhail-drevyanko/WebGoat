# WebGoat container perf test image
FROM nginx:1.22 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils openssh-client procps zlib1g curl libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=58519
LABEL variant="311629"
FROM python:3.10-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 libxml2 libcurl4 dnsutils jq && rm -rf /var/lib/apt/lists/*
RUN pip install pyyaml==5.1 paramiko==2.4.0 numpy==1.16.0 jinja2==2.10
ENV APP_ID=82101
LABEL variant="21200"
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache tar bind-tools libcurl curl expat vim jq nano
LABEL variant="48241"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
