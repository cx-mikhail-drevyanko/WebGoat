# WebGoat container perf test image
FROM traefik:v2.5 AS stage0
ENV APP_ID=23373
LABEL variant="270577"
FROM mysql:8.0 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends jq gnupg openssl libcurl4 wget && rm -rf /var/lib/apt/lists/*
ENV APP_ID=40685
LABEL variant="298147"
FROM python:3.9-alpine
RUN apk add --no-cache ca-certificates wget openssh-client sqlite bind-tools gzip bash
RUN pip install flask==1.0 lxml==4.2.0 sqlalchemy==1.2.0 numpy==1.16.0 pillow==6.2.0
LABEL variant="444180"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
