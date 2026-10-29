# WebGoat container perf test image
FROM amazonlinux:2 AS stage0
RUN yum install -y bind-utils tar sqlite openssh-clients libxml2 openssl unzip zlib && yum clean all
LABEL variant="551639"
FROM tomcat:10.1-jre17
RUN apt-get update && apt-get install -y --no-install-recommends openssl curl vim libcurl4 gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=48275
LABEL variant="685615"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
