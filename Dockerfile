# WebGoat container perf test image
FROM php:8.0-cli AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev perl vim && rm -rf /var/lib/apt/lists/*
LABEL variant="176899"
FROM fedora:34
RUN yum install -y openssl openssh-clients curl gzip zlib && yum clean all
ENV APP_ID=95293
LABEL variant="58098"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
