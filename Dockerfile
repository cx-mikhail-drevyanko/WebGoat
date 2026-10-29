# WebGoat container perf test image
FROM node:12-slim
RUN npm install lodash@4.17.4 express@4.16.0
LABEL variant="805521"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
