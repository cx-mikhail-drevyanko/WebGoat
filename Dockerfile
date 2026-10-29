# WebGoat container perf test image
FROM fedora:38
RUN yum install -y openssh-clients wget openssl unzip && yum clean all
LABEL variant="286590"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
