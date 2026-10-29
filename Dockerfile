# WebGoat container perf test image
FROM alpine:3.20 AS stage0
ENV APP_ID=11480
LABEL variant="967907"
FROM node:16-alpine AS stage1
RUN apk add --no-cache bash expat
RUN npm install axios@0.18.0 express@4.16.0
LABEL variant="451375"
FROM eclipse-temurin:21-jre
ENV APP_ID=41007
LABEL variant="226124"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
