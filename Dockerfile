# WebGoat container perf test image
FROM centos:8 AS stage0
RUN yum install -y curl wget zlib && yum clean all
ENV APP_ID=46618
LABEL variant="701588"
FROM eclipse-temurin:17-jre-alpine AS stage1
RUN apk add --no-cache bash openssh-client libcurl libxml2 vim sqlite
ENV APP_ID=14103
LABEL variant="949513"
FROM postgres:12
ENV APP_ID=12181
LABEL variant="392500"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
