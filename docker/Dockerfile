# WebGoat container perf test image
FROM fedora:34 AS stage0
RUN yum install -y bind-utils && yum clean all
ENV APP_ID=36167
LABEL variant="629916"
FROM node:20-alpine
RUN apk add --no-cache openssl jq curl libcurl git expat gzip ca-certificates
LABEL variant="684586"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
