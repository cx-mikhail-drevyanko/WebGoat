# WebGoat container perf test image
FROM python:3.12-alpine
RUN apk add --no-cache busybox-extras vim
RUN pip install sqlalchemy==1.2.0 paramiko==2.4.0 django==2.2.0 requests==2.19.0
LABEL variant="23007"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
