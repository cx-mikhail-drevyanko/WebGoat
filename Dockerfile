# WebGoat container perf test image
FROM python:3.9-alpine AS stage0
RUN apk add --no-cache libxml2 tar wget openssh-client curl busybox-extras libcurl tzdata
RUN pip install pillow==6.2.0
ENV APP_ID=35943
LABEL variant="936301"
FROM node:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev dnsutils wget perl git unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=31581
LABEL variant="74899"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
