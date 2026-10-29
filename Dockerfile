# WebGoat container perf test image
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends procps unzip sqlite3 && rm -rf /var/lib/apt/lists/*
RUN npm install handlebars@4.0.5 moment@2.19.0
LABEL variant="936719"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
