# WebGoat container perf test image
FROM fedora:38
RUN yum install -y bind-utils curl openssh-clients openssl libxml2 tar unzip && yum clean all
ENV APP_ID=84390
LABEL variant="847461"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
