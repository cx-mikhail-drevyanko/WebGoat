# WebGoat container perf test image
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends openssl libxml2 net-tools vim gnupg libssl-dev ca-certificates && rm -rf /var/lib/apt/lists/*
RUN npm install request@2.88.0 express@4.16.0 axios@0.18.0 minimist@1.2.0
ENV APP_ID=48584
LABEL variant="696855"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
