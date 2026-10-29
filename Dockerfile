# WebGoat container perf test image
FROM node:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev openssl libcurl4 perl curl sqlite3 && rm -rf /var/lib/apt/lists/*
RUN npm install moment@2.19.0 handlebars@4.0.5 axios@0.18.0 lodash@4.17.4
ENV APP_ID=61349
LABEL variant="162916"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
