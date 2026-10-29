# WebGoat container perf test image
FROM node:20-alpine
RUN npm install lodash@4.17.4 jquery@2.2.4 moment@2.19.0 minimist@1.2.0
LABEL variant="758810"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
