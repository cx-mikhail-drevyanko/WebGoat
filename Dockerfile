# WebGoat container perf test image
FROM redis:6.0-alpine AS stage0
RUN apk add --no-cache ca-certificates gzip nano
ENV APP_ID=63423
LABEL variant="834673"
FROM node:18-alpine
RUN apk add --no-cache openssl libxml2
RUN npm install handlebars@4.0.5 request@2.88.0
LABEL variant="833322"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
