# WebGoat container perf test image
FROM node:14-slim
RUN npm install minimist@1.2.0 moment@2.19.0 axios@0.18.0 lodash@4.17.4
LABEL variant="243760"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
