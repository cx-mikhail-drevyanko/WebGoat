# WebGoat container perf test image
FROM nginx:1.26 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates gnupg jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=86969
LABEL variant="971419"
FROM alpine:3.10 AS stage1
RUN apk add --no-cache gzip libxml2 openssh-client wget vim
LABEL variant="58559"
FROM python:3.12-alpine
RUN apk add --no-cache libcurl bind-tools openssl tar nano vim bash
RUN pip install urllib3==1.24 paramiko==2.4.0 flask==1.0
LABEL variant="73877"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
