# WebGoat container perf test image
FROM busybox:1.36 AS stage0
RUN apk add --no-cache zlib sqlite bash tar git
ENV APP_ID=43471
LABEL variant="80185"
FROM node:16-slim
RUN npm install moment@2.19.0
LABEL variant="429075"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
