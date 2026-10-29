# WebGoat container perf test image
FROM tomcat:8.5-jre8
LABEL variant="558867"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
