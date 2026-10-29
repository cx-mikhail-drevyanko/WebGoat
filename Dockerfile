# WebGoat container perf test image
FROM node:12-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends unzip nano net-tools && rm -rf /var/lib/apt/lists/*
RUN npm install minimist@1.2.0 jquery@2.2.4 lodash@4.17.4
LABEL variant="879788"
FROM postgres:13-alpine
LABEL variant="281156"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
