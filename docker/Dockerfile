# WebGoat container perf test image
FROM centos:8 AS stage0
RUN yum install -y openssh-clients vim-minimal gzip && yum clean all
ENV APP_ID=39110
LABEL variant="90938"
FROM centos:8
LABEL variant="290951"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
