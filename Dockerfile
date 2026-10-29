# WebGoat container perf test image
FROM nginx:1.26 AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev && rm -rf /var/lib/apt/lists/*
ENV APP_ID=29576
LABEL variant="178994"
FROM fedora:34 AS stage1
RUN yum install -y openssl && yum clean all
ENV APP_ID=72218
LABEL variant="2457"
FROM tomcat:8.5-jre8
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g git libxml2 nano net-tools jq procps && rm -rf /var/lib/apt/lists/*
ENV APP_ID=70233
LABEL variant="249719"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
