# WebGoat container perf test image
FROM amazonlinux:2
RUN yum install -y vim-minimal zlib sqlite libxml2 tar wget curl openssh-clients && yum clean all
LABEL variant="412361"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
