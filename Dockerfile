# WebGoat container perf test image
FROM node:20-alpine AS stage0
RUN apk add --no-cache expat busybox-extras tzdata zlib bind-tools vim libcurl
RUN npm install handlebars@4.0.5 jquery@2.2.4
LABEL variant="762138"
FROM haproxy:2.0
LABEL variant="442806"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
