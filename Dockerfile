# WebGoat container perf test image
FROM amazonlinux:2 AS stage0
RUN yum install -y libxml2 vim-minimal unzip openssh-clients && yum clean all
ENV APP_ID=93823
LABEL variant="38223"
FROM node:18-alpine
RUN npm install request@2.88.0 moment@2.19.0 axios@0.18.0 lodash@4.17.4
LABEL variant="656474"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
