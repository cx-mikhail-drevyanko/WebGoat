# WebGoat container perf test image
FROM golang:1.16-alpine AS stage0
LABEL variant="459039"
FROM postgres:11-alpine AS stage1
RUN apk add --no-cache jq
ENV APP_ID=89749
LABEL variant="909577"
FROM eclipse-temurin:17-jre-alpine
RUN apk add --no-cache tar libxml2 bash ca-certificates expat sqlite
LABEL variant="716677"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
