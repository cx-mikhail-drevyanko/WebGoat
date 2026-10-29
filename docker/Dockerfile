# WebGoat container perf test image
FROM node:12-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 openssl libxml2 && rm -rf /var/lib/apt/lists/*
RUN npm install minimist@1.2.0 axios@0.18.0
LABEL variant="307477"
FROM python:3.11-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends net-tools && rm -rf /var/lib/apt/lists/*
RUN pip install lxml==4.2.0 numpy==1.16.0 pillow==6.2.0 requests==2.19.0
LABEL variant="738190"
FROM nginx:1.22
RUN apt-get update && apt-get install -y --no-install-recommends openssl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=87000
LABEL variant="766936"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
