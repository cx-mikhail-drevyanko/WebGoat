# WebGoat container perf test image
FROM httpd:2.4.58-alpine
ENV APP_ID=11764
LABEL variant="252100"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
