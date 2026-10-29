# WebGoat container perf test image
FROM centos:8 AS stage0
RUN yum install -y bind-utils libxml2 tar wget openssl curl gzip && yum clean all
ENV APP_ID=25783
LABEL variant="15150"
FROM busybox:1.36
RUN apk add --no-cache openssl nano tzdata libcurl ca-certificates expat openssh-client wget
LABEL variant="36075"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
