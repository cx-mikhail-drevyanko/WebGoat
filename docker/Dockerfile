# WebGoat container perf test image
FROM fedora:38 AS stage0
RUN yum install -y openssh-clients tar curl && yum clean all
LABEL variant="285153"
FROM elasticsearch:7.17.9 AS stage1
LABEL variant="544163"
FROM centos:7
LABEL variant="440400"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
