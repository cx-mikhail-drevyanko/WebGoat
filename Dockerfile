# WebGoat container perf test image
FROM fedora:34
RUN yum install -y tar && yum clean all
LABEL variant="180907"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
