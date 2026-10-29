# WebGoat container perf test image
FROM node:20-alpine
RUN apk add --no-cache zlib tar
RUN npm install moment@2.19.0 handlebars@4.0.5 minimist@1.2.0
LABEL variant="23829"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
