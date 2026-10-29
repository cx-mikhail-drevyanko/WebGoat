# WebGoat container perf test image
FROM centos:7
RUN yum install -y zlib unzip gzip openssl libxml2 jq sqlite && yum clean all
LABEL variant="795277"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
