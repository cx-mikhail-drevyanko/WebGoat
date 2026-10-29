# WebGoat container perf test image
FROM tomcat:10.1-jre17
ENV APP_ID=70548
LABEL variant="387022"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
