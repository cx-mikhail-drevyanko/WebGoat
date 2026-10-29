# WebGoat container perf test image
FROM python:3.9-alpine
RUN apk add --no-cache busybox-extras nano bind-tools git ca-certificates
RUN pip install pyyaml==5.1 flask==1.0 lxml==4.2.0 django==2.2.0 sqlalchemy==1.2.0
LABEL variant="719519"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
