# WebGoat container perf test image
FROM python:3.12-alpine AS stage0
RUN apk add --no-cache wget expat zlib sqlite
RUN pip install requests==2.19.0
ENV APP_ID=2444
LABEL variant="820222"
FROM node:14-slim AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 openssh-client net-tools ca-certificates curl && rm -rf /var/lib/apt/lists/*
RUN npm install request@2.88.0
ENV APP_ID=69755
LABEL variant="222674"
FROM mariadb:10.3
RUN apt-get update && apt-get install -y --no-install-recommends perl ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=6351
LABEL variant="927976"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
