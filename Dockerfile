# WebGoat container perf test image
FROM httpd:2.4.54
ENV APP_ID=51976
LABEL variant="714164"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
