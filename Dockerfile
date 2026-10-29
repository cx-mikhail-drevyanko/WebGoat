# WebGoat container perf test image
FROM amazonlinux:2
RUN yum install -y jq git && yum clean all
ENV APP_ID=69239
LABEL variant="959823"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
