# WebGoat container perf test image
FROM golang:1.20-alpine AS stage0
RUN apk add --no-cache git libcurl tar bind-tools busybox-extras zlib gzip sqlite
LABEL variant="155650"
FROM alpine:3.12
LABEL variant="943891"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
