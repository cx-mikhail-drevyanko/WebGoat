# WebGoat container perf test image
FROM python:3.9-alpine AS stage0
RUN apk add --no-cache curl gzip expat openssl tzdata tar
RUN pip install jinja2==2.10 cryptography==2.3 django==2.2.0 pyyaml==5.1 paramiko==2.4.0
LABEL variant="968198"
FROM debian:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 git procps unzip openssh-client net-tools jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=36797
LABEL variant="51592"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
