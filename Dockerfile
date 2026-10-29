# WebGoat container perf test image
FROM traefik:v2.10 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends curl sqlite3 nano net-tools openssl vim ca-certificates perl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=60857
LABEL variant="561930"
FROM python:3.9-alpine AS stage1
RUN apk add --no-cache gzip
RUN pip install urllib3==1.24 pyyaml==5.1 flask==1.0 requests==2.19.0 pillow==6.2.0
ENV APP_ID=96366
LABEL variant="798723"
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends curl procps && rm -rf /var/lib/apt/lists/*
RUN npm install handlebars@4.0.5 request@2.88.0
LABEL variant="720391"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
