# WebGoat container perf test image
FROM node:18-slim
RUN apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*
RUN npm install lodash@4.17.4 jquery@2.2.4 handlebars@4.0.5 express@4.16.0
ENV APP_ID=79980
LABEL variant="500805"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
