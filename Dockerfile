# WebGoat container perf test image
FROM node:14-slim AS stage0
RUN npm install jquery@2.2.4
LABEL variant="476662"
FROM fedora:38
RUN yum install -y git tar && yum clean all
LABEL variant="126703"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
