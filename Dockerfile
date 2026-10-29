# WebGoat container perf test image
FROM centos:8
RUN yum install -y jq zlib git wget bind-utils vim-minimal && yum clean all
ENV APP_ID=52909
LABEL variant="108379"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
