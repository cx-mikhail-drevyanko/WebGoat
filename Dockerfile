# WebGoat container perf test image
FROM rabbitmq:3.11 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils perl curl vim && rm -rf /var/lib/apt/lists/*
LABEL variant="144383"
FROM python:3.12-alpine
RUN apk add --no-cache sqlite curl wget git tar busybox-extras bash
RUN pip install django==2.2.0 jinja2==2.10
ENV APP_ID=31206
LABEL variant="635656"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
