# WebGoat container perf test image
FROM mariadb:10.6 AS stage0
ENV APP_ID=40569
LABEL variant="474780"
FROM tomcat:10.1-jre17
LABEL variant="932887"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
