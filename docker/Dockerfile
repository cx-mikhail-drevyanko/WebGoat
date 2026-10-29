# WebGoat container perf test image
FROM python:3.11-slim
RUN apt-get update && apt-get install -y --no-install-recommends zlib1g && rm -rf /var/lib/apt/lists/*
RUN pip install django==2.2.0 sqlalchemy==1.2.0 paramiko==2.4.0 pyyaml==5.1 pillow==6.2.0
ENV APP_ID=32752
LABEL variant="925452"
EXPOSE 443
CMD ["sh", "-c", "sleep infinity"]
