# WebGoat container perf test image
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends wget nano curl && rm -rf /var/lib/apt/lists/*
ENV APP_ID=56921
LABEL variant="242374"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
