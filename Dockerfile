# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN apk add --no-cache openssh-client busybox-extras jq libxml2 ca-certificates openssl
RUN pip install jinja2==2.10 pillow==6.2.0 urllib3==1.24 pyyaml==5.1 cryptography==2.3
ENV APP_ID=46882
LABEL variant="267338"
FROM redis:5.0 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends gnupg curl sqlite3 jq ca-certificates libcurl4 openssl git && rm -rf /var/lib/apt/lists/*
LABEL variant="907403"
FROM redis:7.0-alpine
LABEL variant="645125"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
