# WebGoat container perf test image
FROM centos:7
RUN yum install -y git libxml2 && yum clean all
ENV APP_ID=77975
LABEL variant="374160"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
