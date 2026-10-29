# WebGoat container perf test image
FROM nginx:1.26 AS stage0
LABEL variant="963495"
FROM node:16-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends net-tools libssl-dev libxml2 && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0 jquery@2.2.4 axios@0.18.0
LABEL variant="211841"
FROM elasticsearch:7.17.9
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client net-tools && rm -rf /var/lib/apt/lists/*
LABEL variant="767632"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
