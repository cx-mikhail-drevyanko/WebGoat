# WebGoat container perf test image
FROM amazonlinux:2
RUN yum install -y zlib curl openssl tar && yum clean all
ENV APP_ID=65015
LABEL variant="500842"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
