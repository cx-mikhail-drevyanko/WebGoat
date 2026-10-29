# WebGoat container perf test image
FROM mariadb:10.3
ENV APP_ID=15244
LABEL variant="225526"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
