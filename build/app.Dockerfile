# WebGoat container perf test image
FROM mongo:6.0
ENV APP_ID=96256
LABEL variant="546965"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
