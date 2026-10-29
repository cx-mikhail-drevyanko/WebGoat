# WebGoat container perf test image
FROM node:16-alpine
RUN npm install axios@0.18.0 moment@2.19.0
ENV APP_ID=45991
LABEL variant="372058"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
