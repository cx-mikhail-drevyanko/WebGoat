# WebGoat container perf test image
FROM python:3.9-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip ca-certificates && rm -rf /var/lib/apt/lists/*
RUN pip install django==2.2.0 pyyaml==5.1 cryptography==2.3 flask==1.0 jinja2==2.10
ENV APP_ID=19953
LABEL variant="984143"
FROM node:20-alpine AS stage1
RUN npm install moment@2.19.0 request@2.88.0
LABEL variant="50175"
FROM nginx:1.22
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g && rm -rf /var/lib/apt/lists/*
ENV APP_ID=74480
LABEL variant="623282"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
