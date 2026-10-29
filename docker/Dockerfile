# WebGoat container perf test image
FROM node:16-slim
RUN apt-get update && apt-get install -y --no-install-recommends unzip git perl zlib1g && rm -rf /var/lib/apt/lists/*
RUN npm install handlebars@4.0.5 express@4.16.0 moment@2.19.0
ENV APP_ID=65539
LABEL variant="2432"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
