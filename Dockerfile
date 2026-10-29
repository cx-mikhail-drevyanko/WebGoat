# WebGoat container perf test image
FROM python:3.9-slim AS stage0
RUN pip install numpy==1.16.0 requests==2.19.0 jinja2==2.10 paramiko==2.4.0
LABEL variant="430774"
FROM fedora:38
RUN yum install -y vim-minimal gzip && yum clean all
LABEL variant="392140"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
