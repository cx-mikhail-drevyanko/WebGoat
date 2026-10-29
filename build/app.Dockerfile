# WebGoat container perf test image
FROM fedora:38 AS stage0
RUN yum install -y jq curl tar gzip && yum clean all
LABEL variant="621228"
FROM postgres:12 AS stage1
RUN apt-get update && apt-get install -y --no-install-recommends curl procps && rm -rf /var/lib/apt/lists/*
LABEL variant="483661"
FROM traefik:v2.10
RUN apt-get update && apt-get install -y --no-install-recommends gnupg && rm -rf /var/lib/apt/lists/*
ENV APP_ID=2441
LABEL variant="100339"
EXPOSE 80
CMD ["sh", "-c", "sleep infinity"]
