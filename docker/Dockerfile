# WebGoat container perf test image
FROM fedora:38
RUN yum install -y vim-minimal gzip libxml2 openssh-clients && yum clean all
ENV APP_ID=80594
LABEL variant="391838"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
