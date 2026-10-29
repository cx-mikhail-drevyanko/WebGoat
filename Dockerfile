# WebGoat container perf test image
FROM centos:8
RUN yum install -y openssh-clients vim-minimal curl tar sqlite jq zlib libxml2 && yum clean all
ENV APP_ID=74085
LABEL variant="4583"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
