# WebGoat container perf test image
FROM php:7.4-apache
LABEL variant="640823"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
