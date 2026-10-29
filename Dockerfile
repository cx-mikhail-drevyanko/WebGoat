# WebGoat container perf test image
FROM php:8.1-fpm-alpine
LABEL variant="897649"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
