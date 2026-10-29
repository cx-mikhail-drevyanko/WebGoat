# WebGoat container perf test image
FROM nginx:1.14
ENV APP_ID=38324
LABEL variant="347971"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
