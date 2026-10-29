# WebGoat container perf test image
FROM node:16-slim
RUN apt-get update && apt-get install -y --no-install-recommends vim nano gnupg && rm -rf /var/lib/apt/lists/*
RUN npm install request@2.88.0 express@4.16.0 lodash@4.17.4 handlebars@4.0.5
ENV APP_ID=11583
LABEL variant="821435"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
