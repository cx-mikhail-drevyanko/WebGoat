# WebGoat container perf test image
FROM centos:8 AS stage0
RUN yum install -y zlib libxml2 curl && yum clean all
LABEL variant="687798"
FROM httpd:2.4.46
RUN apt-get update && apt-get install -y --no-install-recommends libssl-dev openssh-client vim perl zlib1g jq curl libcurl4 && rm -rf /var/lib/apt/lists/*
ENV APP_ID=64890
LABEL variant="989626"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
