# WebGoat container perf test image
FROM tomcat:10.1-jre17
RUN apt-get update && apt-get install -y --no-install-recommends perl libssl-dev net-tools curl openssh-client unzip gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=35204
LABEL variant="884070"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
