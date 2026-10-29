# WebGoat container perf test image
FROM mongo:6.0
ENV APP_ID=1641
LABEL variant="242900"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
