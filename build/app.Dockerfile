# WebGoat container perf test image
FROM fedora:34 AS stage0
RUN yum install -y jq sqlite tar vim-minimal gzip wget bind-utils libxml2 && yum clean all
ENV APP_ID=75702
LABEL variant="730239"
FROM tomcat:8.5-jre8 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends git openssh-client libxml2 zlib1g unzip libcurl4 jq procps && rm -rf /var/lib/apt/lists/*
LABEL variant="318628"
FROM traefik:v2.5
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g openssh-client ca-certificates && rm -rf /var/lib/apt/lists/*
LABEL variant="583161"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
