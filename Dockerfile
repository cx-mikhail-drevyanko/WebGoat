# WebGoat container perf test image
FROM node:16-slim AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends git libcurl4 && rm -rf /var/lib/apt/lists/*
RUN npm install handlebars@4.0.5
LABEL variant="491546"
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends git net-tools sqlite3 curl openssh-client libxml2 unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=79524
LABEL variant="383362"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
