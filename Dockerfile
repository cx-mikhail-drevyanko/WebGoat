# WebGoat container perf test image
FROM fedora:38
RUN yum install -y wget tar jq unzip git openssl sqlite && yum clean all
LABEL variant="608607"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
