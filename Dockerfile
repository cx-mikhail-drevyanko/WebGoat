# WebGoat container perf test image
FROM httpd:2.4.54 AS stage0
LABEL variant="484786"
FROM fedora:34
RUN yum install -y openssl gzip vim-minimal jq bind-utils git tar && yum clean all
ENV APP_ID=67799
LABEL variant="573253"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
