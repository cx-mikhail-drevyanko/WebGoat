# WebGoat container perf test image
FROM amazonlinux:2 AS stage0
RUN yum install -y sqlite vim-minimal jq tar wget zlib bind-utils && yum clean all
LABEL variant="646321"
FROM rabbitmq:3.11
RUN apt-get update && apt-get install -y --no-install-recommends openssh-client jq && rm -rf /var/lib/apt/lists/*
ENV APP_ID=43946
LABEL variant="951101"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
