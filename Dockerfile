# WebGoat container perf test image
FROM node:16-slim
RUN npm install request@2.88.0 moment@2.19.0
ENV APP_ID=40359
LABEL variant="755667"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
