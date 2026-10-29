# WebGoat container perf test image
FROM node:14-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 libcurl4 perl nano && rm -rf /var/lib/apt/lists/*
RUN npm install express@4.16.0 moment@2.19.0
LABEL variant="835141"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
