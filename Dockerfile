# WebGoat container perf test image
FROM python:3.9-alpine
RUN pip install pyyaml==5.1 sqlalchemy==1.2.0 paramiko==2.4.0
ENV APP_ID=4664
LABEL variant="501561"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
