# WebGoat container perf test image
FROM node:14-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*
RUN npm install jquery@2.2.4 request@2.88.0 lodash@4.17.4 moment@2.19.0
LABEL variant="160977"
FROM traefik:v2.10
ENV APP_ID=13657
LABEL variant="766926"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
