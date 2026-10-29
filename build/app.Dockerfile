# WebGoat container perf test image
FROM node:12-slim
RUN apt-get update && apt-get install -y --no-install-recommends dnsutils zlib1g procps openssl && rm -rf /var/lib/apt/lists/*
RUN npm install axios@0.18.0 lodash@4.17.4
LABEL variant="386670"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
