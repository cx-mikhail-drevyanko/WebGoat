# WebGoat container perf test image
FROM fedora:38
RUN yum install -y git bind-utils curl zlib jq vim-minimal libxml2 && yum clean all
ENV APP_ID=93308
LABEL variant="287837"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
