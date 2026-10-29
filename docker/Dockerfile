# WebGoat container perf test image
FROM node:16-alpine
RUN apk add --no-cache curl openssh-client sqlite
RUN npm install handlebars@4.0.5 moment@2.19.0 express@4.16.0 minimist@1.2.0
LABEL variant="909536"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
