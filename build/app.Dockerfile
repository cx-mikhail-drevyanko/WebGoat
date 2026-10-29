# WebGoat container perf test image
FROM redis:6.0-alpine
ENV APP_ID=25899
LABEL variant="608242"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
