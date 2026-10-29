# WebGoat container perf test image
FROM tomcat:8.5-jre8
ENV APP_ID=29196
LABEL variant="385231"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
