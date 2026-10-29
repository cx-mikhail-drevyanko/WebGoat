# WebGoat container perf test image
FROM postgres:13-alpine
ENV APP_ID=48658
LABEL variant="637283"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
