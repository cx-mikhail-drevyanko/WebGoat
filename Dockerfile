# WebGoat container perf test image
FROM php:8.0-cli AS stage0
RUN apt-get update && apt-get install -y --no-install-recommends perl nano curl libssl-dev net-tools ca-certificates && rm -rf /var/lib/apt/lists/*
ENV APP_ID=84334
LABEL variant="732970"
FROM nginx:1.26 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates openssl openssh-client libssl-dev perl libcurl4 unzip && rm -rf /var/lib/apt/lists/*
ENV APP_ID=63436
LABEL variant="351407"
FROM centos:8
RUN yum install -y openssh-clients bind-utils && yum clean all
LABEL variant="371637"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
