# WebGoat container perf test image
FROM python:3.8-slim AS stage0
RUN pip install sqlalchemy==1.2.0 paramiko==2.4.0 requests==2.19.0 jinja2==2.10
ENV APP_ID=88812
LABEL variant="432599"
FROM ubuntu:20.04 AS stage1
LABEL variant="915627"
FROM alpine:3.18
ENV APP_ID=32789
LABEL variant="79846"
EXPOSE 3000
CMD ["sh", "-c", "sleep infinity"]
