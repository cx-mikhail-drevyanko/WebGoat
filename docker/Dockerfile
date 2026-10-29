# WebGoat container perf test image
FROM python:3.7-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client vim && rm -rf /var/lib/apt/lists/*
RUN pip install pyyaml==5.1 urllib3==1.24
ENV APP_ID=93460
LABEL variant="761343"
FROM python:3.12-alpine AS stage1
RUN apk add --no-cache sqlite ca-certificates wget jq
RUN pip install jinja2==2.10
ENV APP_ID=78035
LABEL variant="63657"
FROM node:16-alpine
RUN apk add --no-cache libcurl bind-tools nano curl
RUN npm install minimist@1.2.0
LABEL variant="52831"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
