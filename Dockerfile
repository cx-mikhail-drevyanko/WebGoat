# WebGoat container perf test image
FROM node:16-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 sqlite3 ca-certificates zlib1g && rm -rf /var/lib/apt/lists/*
RUN npm install axios@0.18.0
ENV APP_ID=23221
LABEL variant="690718"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
