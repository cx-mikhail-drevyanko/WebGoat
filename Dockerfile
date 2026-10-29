# WebGoat container perf test image
FROM tomcat:9.0-jre11
ENV APP_ID=71514
LABEL variant="764931"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
