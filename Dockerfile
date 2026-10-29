# WebGoat container perf test image
FROM python:3.7-slim
RUN apt-get update && apt-get install -y --no-install-recommends libxml2 && rm -rf /var/lib/apt/lists/*
RUN pip install sqlalchemy==1.2.0 flask==1.0 pillow==6.2.0 lxml==4.2.0 urllib3==1.24
LABEL variant="769723"
EXPOSE 8443
CMD ["sh", "-c", "sleep infinity"]
