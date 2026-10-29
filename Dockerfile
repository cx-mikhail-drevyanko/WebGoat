# WebGoat container perf test image
FROM amazonlinux:2 AS stage0
RUN yum install -y tar jq zlib gzip git && yum clean all
ENV APP_ID=90717
LABEL variant="361739"
FROM node:16-alpine
RUN apk add --no-cache tar nano openssh-client
ENV APP_ID=78642
LABEL variant="922075"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
