# WebGoat container perf test image
FROM amazonlinux:2
RUN yum install -y gzip && yum clean all
ENV APP_ID=20620
LABEL variant="803954"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
