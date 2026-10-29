# WebGoat container perf test image
FROM fedora:34
RUN yum install -y gzip curl git libxml2 wget openssl bind-utils tar && yum clean all
ENV APP_ID=31347
LABEL variant="174586"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
