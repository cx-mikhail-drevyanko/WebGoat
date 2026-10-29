# WebGoat container perf test image
FROM python:3.10-slim
RUN apt-get update && apt-get install -y --no-install-recommends libcurl4 openssl curl && rm -rf /var/lib/apt/lists/*
RUN pip install sqlalchemy==1.2.0 pillow==6.2.0 lxml==4.2.0 pyyaml==5.1 numpy==1.16.0
ENV APP_ID=76552
LABEL variant="466659"
EXPOSE 9090
CMD ["sh", "-c", "sleep infinity"]
