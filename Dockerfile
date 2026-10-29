# WebGoat container perf test image
FROM python:3.10-slim
RUN pip install sqlalchemy==1.2.0 urllib3==1.24 django==2.2.0 lxml==4.2.0 pillow==6.2.0
LABEL variant="173530"
EXPOSE 8080
CMD ["sh", "-c", "sleep infinity"]
