# WebGoat container perf test image
FROM traefik:v2.10 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl openssl openssh-client curl libssl-dev wget jq vim && rm -rf /var/lib/apt/lists/*
ENV APP_ID=24366
LABEL variant="967736"
FROM node:20-alpine
RUN apk add --no-cache expat vim libcurl
RUN npm install request@2.88.0 minimist@1.2.0
ENV APP_ID=48855
LABEL variant="720282"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
