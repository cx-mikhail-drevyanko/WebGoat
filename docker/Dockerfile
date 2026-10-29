# WebGoat container perf test image
FROM fedora:34 AS stage0
RUN yum install -y libxml2 wget gzip && yum clean all
LABEL variant="917151"
FROM node:18-alpine
RUN apk add --no-cache tzdata bash tar wget zlib jq
RUN npm install express@4.16.0
LABEL variant="731795"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
