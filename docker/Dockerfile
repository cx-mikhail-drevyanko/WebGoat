# WebGoat container perf test image
FROM php:8.1-fpm-alpine AS stage0
RUN apk add --no-cache gzip
ENV APP_ID=37385
LABEL variant="329705"
FROM fedora:38
RUN yum install -y unzip wget sqlite tar jq && yum clean all
LABEL variant="138053"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
