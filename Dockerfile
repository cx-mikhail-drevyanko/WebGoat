# WebGoat container perf test image
FROM node:18-alpine
RUN npm install minimist@1.2.0 handlebars@4.0.5 request@2.88.0
LABEL variant="125332"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
