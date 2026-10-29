# WebGoat container perf test image
FROM fedora:34
RUN yum install -y sqlite jq unzip gzip zlib && yum clean all
LABEL variant="622246"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
