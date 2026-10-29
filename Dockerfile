# WebGoat container perf test image
FROM node:16-alpine AS stage0
RUN apk add --no-cache tzdata
RUN npm install moment@2.19.0 jquery@2.2.4
LABEL variant="630814"
FROM alpine:3.22
ENV APP_ID=59113
LABEL variant="354733"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
