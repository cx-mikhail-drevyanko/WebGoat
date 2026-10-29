# WebGoat container perf test image
FROM postgres:14 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 curl wget dnsutils ca-certificates openssh-client && rm -rf /var/lib/apt/lists/*
LABEL variant="891931"
FROM node:16-slim
RUN apt-get update && apt-get install -y --no-install-recommends procps libssl-dev && rm -rf /var/lib/apt/lists/*
RUN npm install minimist@1.2.0 lodash@4.17.4 express@4.16.0
LABEL variant="313144"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
