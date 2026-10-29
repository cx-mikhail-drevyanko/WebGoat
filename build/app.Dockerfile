# WebGoat container perf test image
FROM python:3.7-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends openssl wget git sqlite3 curl vim nano && rm -rf /var/lib/apt/lists/*
RUN pip install sqlalchemy==1.2.0 pillow==6.2.0 django==2.2.0 cryptography==2.3 lxml==4.2.0
LABEL variant="568529"
FROM influxdb:1.8 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 ca-certificates vim gnupg && rm -rf /var/lib/apt/lists/*
LABEL variant="822886"
FROM node:20-alpine
ENV APP_ID=48312
LABEL variant="809593"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
