# WebGoat container perf test image
FROM haproxy:2.6-alpine AS stage0
RUN apk add --no-cache nano
ENV APP_ID=73999
LABEL variant="434230"
FROM amazonlinux:2
RUN yum install -y wget sqlite zlib bind-utils gzip && yum clean all
LABEL variant="587881"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
