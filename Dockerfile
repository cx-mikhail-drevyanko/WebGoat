# WebGoat container perf test image
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client sqlite3 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=35309
LABEL variant="796117"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
