# WebGoat container perf test image
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0 handlebars@4.0.5 jquery@2.2.4 minimist@1.2.0
ENV APP_ID=43214
LABEL variant="231931"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
