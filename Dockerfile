# WebGoat container perf test image
FROM influxdb:1.8 AS stage0
LABEL variant="226622"
FROM haproxy:2.0 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client openssl ca-certificates libxml2 nano wget vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=29803
LABEL variant="621205"
FROM node:16-slim
RUN apt-get update && apt-get install -y --no-install-recommends openssl gnupg sqlite3 libxml2 ca-certificates dnsutils vim perl && rm -rf /var/lib/apt/lists/*
RUN npm install jquery@2.2.4 express@4.16.0 lodash@4.17.4
ENV APP_ID=15572
LABEL variant="375620"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
