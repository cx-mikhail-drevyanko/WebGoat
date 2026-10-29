# WebGoat container perf test image
FROM debian:bullseye AS stage0
LABEL variant="934880"
FROM golang:1.20-alpine AS stage1
RUN apk add --no-cache gzip bash jq
ENV APP_ID=62816
LABEL variant="127314"
FROM rabbitmq:3.8-alpine
RUN apk add --no-cache tzdata sqlite bash
LABEL variant="859142"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
