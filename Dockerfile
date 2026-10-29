# WebGoat container perf test image
FROM nginx:1.26 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client gnupg ca-certificates wget && rm -rf /var/lib/apt/lists/*
LABEL variant="649066"
FROM python:3.12-alpine AS stage1
RUN apk add --no-cache expat tar nano openssh-client busybox-extras gzip libxml2 sqlite
RUN pip install sqlalchemy==1.2.0
ENV APP_ID=11926
LABEL variant="382308"
FROM alpine:3.14
RUN apk add --no-cache openssl
ENV APP_ID=41214
LABEL variant="657521"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
