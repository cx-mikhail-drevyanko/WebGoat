# WebGoat container perf test image
FROM fedora:38
RUN yum install -y curl vim-minimal openssh-clients zlib git && yum clean all
LABEL variant="434407"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
