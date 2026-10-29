# WebGoat container perf test image
FROM node:20-alpine AS stage0
RUN npm install handlebars@4.0.5 jquery@2.2.4
ENV APP_ID=69836
LABEL variant="213810"
FROM postgres:13-alpine
RUN apk add --no-cache tar wget expat jq sqlite zlib libcurl
ENV APP_ID=58325
LABEL variant="408246"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
