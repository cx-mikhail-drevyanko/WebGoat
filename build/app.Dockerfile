# WebGoat container perf test image
FROM php:8.0-cli
LABEL variant="460445"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
