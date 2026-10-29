# WebGoat container perf test image
FROM alpine:3.18 AS stage0
RUN apk add --no-cache wget libxml2 busybox-extras curl
LABEL variant="675579"
FROM python:3.7-slim AS stage1
RUN pip install requests==2.19.0 pyyaml==5.1 lxml==4.2.0 urllib3==1.24 pillow==6.2.0
ENV APP_ID=36115
LABEL variant="67959"
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g ca-certificates && rm -rf /var/lib/apt/lists/*
RUN npm install jquery@2.2.4 moment@2.19.0 handlebars@4.0.5 lodash@4.17.4
LABEL variant="177616"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
