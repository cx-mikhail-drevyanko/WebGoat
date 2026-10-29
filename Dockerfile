# WebGoat container perf test image
FROM redis:6.2 AS stage0
ENV APP_ID=39260
LABEL variant="149096"
FROM fedora:38
RUN yum install -y openssh-clients unzip && yum clean all
ENV APP_ID=18601
LABEL variant="321520"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
