# WebGoat container perf test image
FROM python:3.7-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl && rm -rf /var/lib/apt/lists/*
RUN pip install jinja2==2.10 paramiko==2.4.0 urllib3==1.24 sqlalchemy==1.2.0 numpy==1.16.0
ENV APP_ID=1708
LABEL variant="176766"
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends net-tools gnupg git libcurl4 dnsutils curl zlib1g libxml2 && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0 axios@0.18.0 lodash@4.17.4
ENV APP_ID=37337
LABEL variant="68099"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
