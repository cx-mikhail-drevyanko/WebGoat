# WebGoat container perf test image
FROM fedora:38
RUN yum install -y curl jq bind-utils zlib && yum clean all
ENV APP_ID=25338
LABEL variant="419124"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
