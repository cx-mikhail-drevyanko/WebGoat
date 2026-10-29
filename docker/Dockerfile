# WebGoat container perf test image
FROM fedora:38 AS stage0
RUN yum install -y libxml2 bind-utils curl unzip zlib vim-minimal && yum clean all
LABEL variant="30641"
FROM debian:buster AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends curl wget jq perl dnsutils && rm -rf /var/lib/apt/lists/*
LABEL variant="841458"
FROM redis:6.2
RUN apt-get update && apt-get install -y --no-install-recommends wget openssl net-tools && rm -rf /var/lib/apt/lists/*
ENV APP_ID=33720
LABEL variant="901755"
EXPOSE 5000
CMD ["sh", "-c", "sleep infinity"]
