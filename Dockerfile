# WebGoat container perf test image
FROM alpine:3.22 AS stage0
RUN apk add --no-cache bind-tools vim
LABEL variant="100027"
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends wget ca-certificates && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0
LABEL variant="773871"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
