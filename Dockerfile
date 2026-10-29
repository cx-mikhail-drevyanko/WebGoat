# WebGoat container perf test image
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends wget vim && rm -rf /var/lib/apt/lists/*
RUN npm install minimist@1.2.0 request@2.88.0 jquery@2.2.4 handlebars@4.0.5
LABEL variant="938259"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
