# WebGoat container perf test image
FROM php:8.1-fpm-alpine AS stage0
RUN apk add --no-cache git zlib busybox-extras
LABEL variant="998149"
FROM golang:1.18
ENV APP_ID=52966
LABEL variant="50428"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
