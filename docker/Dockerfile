# WebGoat container perf test image
FROM php:8.1-fpm-alpine
RUN apk add --no-cache tzdata gzip sqlite jq bash git wget tar
ENV APP_ID=3117
LABEL variant="954466"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
