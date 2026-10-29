# WebGoat container perf test image
FROM php:8.1-fpm-alpine
RUN apk add --no-cache bash gzip curl git expat
ENV APP_ID=14720
LABEL variant="536196"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
