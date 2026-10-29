# WebGoat container perf test image
FROM debian:12-slim AS stage0
LABEL variant="305455"
FROM python:3.9-alpine AS stage1
RUN apk add --no-cache busybox-extras tzdata libxml2 bind-tools bash
ENV APP_ID=77706
LABEL variant="783309"
FROM elasticsearch:7.17.9
LABEL variant="798938"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
