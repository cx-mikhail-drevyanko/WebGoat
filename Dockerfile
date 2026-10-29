# WebGoat container perf test image
FROM golang:1.20-alpine AS stage0
RUN apk add --no-cache jq libcurl ca-certificates wget bind-tools vim expat nano
LABEL variant="699529"
FROM eclipse-temurin:17-jre-alpine AS stage1
RUN apk add --no-cache nano git curl
ENV APP_ID=45856
LABEL variant="111643"
FROM httpd:2.4.58-alpine
LABEL variant="994019"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
