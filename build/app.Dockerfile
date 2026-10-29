# WebGoat container perf test image
FROM mariadb:10.6
ENV APP_ID=39185
LABEL variant="423695"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
