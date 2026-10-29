# WebGoat container perf test image
FROM redis:7.0-alpine
ENV APP_ID=23421
LABEL variant="5717"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
