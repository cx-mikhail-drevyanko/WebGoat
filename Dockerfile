# WebGoat container perf test image
FROM busybox:1.36
ENV APP_ID=90756
LABEL variant="60700"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
